$(document).ready(function () {
    let isPlayed = false;
    $.ajax({
        url: '/ads/query/video',
        method: 'get',
        data: {},
        success: (response) => {
            if (response.status == 'success') {
                if (response.contents[0] != undefined | response.contents[0] != '') {
                    let ads = JSON.parse(response.contents[0]).ads;
                    try {
                        var container = document.querySelector('.video_crickbd_system');
                        var videoAds = document.createElement('video');
                        videoAds.style.cssText = "width:100%;aspect-ratio:16/9;";
                        container.appendChild(videoAds);
                        videoAds.setAttribute('src', ads.content_url);
                        videoAds.setAttribute('oncontextmenu', 'return false');
                        videoAds.setAttribute('id', ads.token);
                        videoAds.load();
                        videoAds.muted = true;
                        videoAds.play();
                        crickAdsEvents(response.contents[1].urls,ads.token,ads.ads_url,'video')
                    } catch (error) {
                        console.warn('Ads Container Not Found');
                    }
                }
            }
        }
    });

    $.ajax({
        url: '/ads/query/img',
        method: 'get',
        data: {},
        success: (response) => {
            if (response.status == 'success') {
                if (response.contents[0] != undefined | response.contents[0] != '') {
                    let ads = JSON.parse(response.contents[0]).ads;
                    try {
                        var container = document.querySelector('.image_crickbd_system');
                        var imgAds = document.createElement('img');
                        imgAds.style.cssText = "width:100%;aspect-ratio:21/17";
                        container.appendChild(imgAds);
                        imgAds.setAttribute('src', ads.content_url);
                        imgAds.setAttribute('oncontextmenu', 'return false');
                        imgAds.setAttribute('id', ads.token);
                        crickAdsEvents(response.contents[1].urls,ads.token,ads.ads_url,'image')
                    } catch (error) {
                        console.warn('Ads Container Not Found');
                    }
                }
            }
        }
    });

    function crickAdsEvents(events,token,url,type){
       try {
            console.log(events);
            let urls = JSON.parse(events);
            console.log(urls)
            apiCall('get',urls.impressions,{token:token});
            content = document.getElementById(token);

            if(type == 'video'){
                content.addEventListener('ended',()=>{
                    if(isPlayed == false){
                        isPlayed = true;
                        apiCall('get',urls.plays,{token:token});
                        content.style.display = 'none';
                    }
                })
            }
            if(type == 'image'){
                let x = 0;
                const adsTimer = setInterval(()=>{
                    x++;
                    if(x == 10){
                        clearInterval(adsTimer);
                        x=0;
                        if(isPlayed == false){
                            isPlayed = true;
                            apiCall('get',urls.plays,{token:token});
                            content.style.display = 'none';
                        }
                    }
                },1000);
            }
            content.addEventListener('click',()=>{
                window.open(url,'_blank');
                apiCall('get',urls.clicks,{data:1});
            })
       } catch (error) {
            console.log(error);
       }
    }


    function apiCall(method,url,data){
        $.ajax({
            url: url,
            method: method,
            data: data,
            success: (response)=>{
                console.log(response);
            }
        })
    }
})