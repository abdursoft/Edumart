class Calendar
{
    constructor(id)
    {
        this.displayed_date = new Date() //date wich calendar displays now
        this.current_day = this.displayed_date.getDate()
        this.selected_date = this.displayed_date
        this.are_real_date_displayed = true

        this.drawToDom(this.displayed_date, id)

        this.body_node = document.getElementById('calendar-body')
        this.year_node = document.getElementById('calendar-year')
        this.month_node = document.getElementById('calendar-month')

        this.moveLeft = this.moveLeft.bind(this)
        this.moveRight = this.moveRight.bind(this)
        this.selectHandler = this.selectHandler.bind(this)
        this.redrawBody = this.redrawBody.bind(this)

        this.body_node.addEventListener('click', this.selectHandler)

        document.getElementById('calendar-left-btn') //adds listeners for buttons
            .addEventListener('click', this.moveLeft)
        document.getElementById('calendar-right-btn')
            .addEventListener('click', this.moveRight)
    }

    drawToDom(date, id)
    {
        let year = date.getFullYear()
        let month = this.getMonthName(date)
        document.getElementById(id)
            .innerHTML =
            `
		<div id='calendar'>
		<header class="calendar-head">
		<div id='calendar-left-btn' class="calendar-arrow">
		<img class="calendar-arrow-left" src="images/left-arrow.png" alt="">
		</div>

		<div class="calender-header-text">
		<span id='calendar-month' class="calender-header-text-month">${month}</span>
		<span id='calendar-year' class="calender-header-text-year">${year}</span>
		</div>

		<div id='calendar-right-btn' class="calendar-arrow">
		<img class='calendar-arrow-right' src="images/right-arrow.png" alt="">
		</div>
		<table class="calendar-days-names">
		<td class='calendar-days-names-item'>MON</td>
		<td class='calendar-days-names-item'>TUE</td>
		<td class='calendar-days-names-item'>WED</td>
		<td class='calendar-days-names-item'>THU</td>
		<td class='calendar-days-names-item'>FRI</td>
		<td class='calendar-days-names-item'>SAT</td>
		<td class='calendar-days-names-item'>SUN</td>
		</table>
		</header>
		<div id='calendar-body'></div>
		</div>`
        let body = this.createCalendarBody(this.displayed_date, this.are_real_date_displayed)
        document.getElementById('calendar-body').appendChild(body)
    }

    createDaysArray(date)
    {
        let prev_month_last_day = new Date( //number of the last day of the previous month
            date.getFullYear(),
            date.getMonth(),
            0).getDate()

        let first_week_day = (new Date( //number of the last day of the current month f.e. monday->1, wednesday->3
            date.getFullYear(),
            date.getMonth(),
            1)).getDay();

        if (first_week_day == 0) first_week_day = 7 //if it was sunday

        let first_array_element = prev_month_last_day - first_week_day + 2

        let current_month_last_day = (new Date(date.getFullYear(), date.getMonth() + 1, 0)).getDate()

        let days_array = new Array(42)
        let i = 0 // iterator for all three parts of array
        for (i = 0; i < first_week_day - 1; ++i) //adds last days of previous month
        {
            days_array[i] = {
                number: first_array_element + i,
                from: 'prev month'
            } //'from' will be used to add different styles
        }
        for (let k = 1; k <= current_month_last_day; ++k) //adds days of current month
        {
            days_array[i] = {
                number: k,
                from: 'currnet month',
                weekend: i % 7 > 4
            }
            i++
        }
        for (let k = 0; i < days_array.length; ++k) //adds days of next month
        {
            days_array[i] = {
                number: k + 1,
                from: 'next month'
            }
            i++
        }
        return days_array
    }

    createCalendarBody(date, are_real_date_displayed) //returns a table fulfilled with days
    {
        let days_array = this.createDaysArray(date)
        let table = document.createElement('table')
        table.classList.add('calendar-body')
        let i = 0 //iterator for days_aray
        for (let j = 0; j < 6; ++j)
        {
            let tr = document.createElement('tr')
            for (let k = 0; k < 7; ++k)
            {
                let td = document.createElement('td')
                td.innerHTML = days_array[i].number
                tr.appendChild(td)

                //add the styles that depend on what month the day belongs to
                td.classList.add('calendar-cell')
                if (days_array[i].from !== 'currnet month')
                {
                    td.classList.add('calendar-cell-gray')
                }
                else
                {
                    if (date.getFullYear() == this.selected_date.getFullYear() && //if this day is selected
                        date.getMonth() == this.selected_date.getMonth() &&
                        this.selected_date.getDate() == days_array[i].number)
                    {
                        td.classList.add('calendar-cell-selected')
                        td.id = 'selected_date'
                    }
                    if (days_array[i].weekend)
                        td.classList.add('calendar-cell-green')
                    if (are_real_date_displayed)
                    {
                        if (this.current_day == days_array[i].number)
                        {
                            td.classList.add('calendar-cell-today')
                        }
                    }
                }
                ++i
            }
            tr.classList.add('calendar-body-row')
            table.appendChild(tr)
        }
        return table
    }

    getMonthName(date)
    {
        const month_names = ["January", "February", "March", "April", "May", "June",
            "July", "August", "September", "October", "November", "December"
        ]
        return month_names[date.getMonth()]
    }

    //if the received date corresponds to the current month and year returns true
    isThisDayCurrent(date)
    {
        let current = new Date()
        if (current.getFullYear() == date.getFullYear() && current.getMonth() == date.getMonth())
            return true
        else
            return false
    }

    redrawBody(date)
    {
        let are_real_date_displayed = this.isThisDayCurrent(date) //if it is current month, current day will ba highlighted
        let new_body = this.createCalendarBody(date, are_real_date_displayed)
        this.year_node.innerHTML = date.getFullYear()
        this.month_node.innerHTML = this.getMonthName(date)
        this.body_node.innerHTML = ''
        this.body_node.appendChild(new_body)
    }

    moveLeft()
    {
        this.displayed_date = new Date( //set the day to prev month
            this.displayed_date.getFullYear(),
            this.displayed_date.getMonth() - 1, 1)

        this.redrawBody(this.displayed_date)
    }

    moveRight()
    {
        this.displayed_date = new Date( //set the day to next month
            this.displayed_date.getFullYear(),
            this.displayed_date.getMonth() + 1, 1)

        this.redrawBody(this.displayed_date)
    }

    selectHandler(e)
    {
        if (e.target.classList.contains('calendar-cell-gray')) return //only days of current month can be selected
        if (!e.target.classList.contains('calendar-cell')) return //if it wawn't a click on a cell

        let prev_selected = document.getElementById('selected_date')
        if (prev_selected)
        {
            prev_selected.classList.remove('calendar-cell-selected')
            prev_selected.id = ''
        }

        this.selected_date = new Date(
            this.displayed_date.getFullYear(),
            this.displayed_date.getMonth(),
            e.target.innerHTML)

        e.target.id = 'selected_date'
        e.target.classList.add('calendar-cell-selected')
    }
}