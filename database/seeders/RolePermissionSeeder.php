<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\PermissionRegistrar;

class RolePermissionSeeder extends Seeder
{
    public function run(): void
    {
        app(PermissionRegistrar::class)->forgetCachedPermissions();

        /*
        |--------------------------------------------------------------------------
        | Permissions
        |--------------------------------------------------------------------------
        */

        $permissions = [

            // ===== ADMIN / SYSTEM =====
            'manage_users',
            'manage_roles',
            'manage_permissions',
            'manage_settings',
            'manage_languages',
            'manage_database_backup',

            // ===== ACADEMIC =====
            'manage_departments',
            'manage_classes',
            'manage_subjects',
            'manage_assignments',
            'manage_homework',
            'manage_lessons',
            'manage_syllabus',

            // ===== STUDENT MANAGEMENT =====
            'manage_students',
            'manage_class_promotions',
            'view_students',

            // ===== ATTENDANCE =====
            'manage_attendance',
            'view_attendance',

            // ===== EXAMS & RESULTS =====
            'manage_exams',
            'manage_exam_subjects',
            'manage_exam_fees',
            'manage_admit_cards',
            'manage_mark_sheets',
            'manage_results',
            'view_results',

            // ===== FEES & ACCOUNTS =====
            'manage_fees',
            'manage_expense',
            'manage_salary',
            'manage_transactions',
            'view_finance_reports',

            // ===== LIBRARY =====
            'manage_library',
            'manage_book_category',
            'manage_books',
            'view_library',

            // ===== INVENTORY =====
            'manage_inventory',
            'manage_supplier',
            'manage_rooms',

            // ===== CMS / WEBSITE =====
            'manage_pages',
            'manage_posts',
            'manage_category',
            'manage_slider',
            'manage_gallery',
            'manage_downloads',
            'manage_menu_builder',

            // ===== NOTIFICATION =====
            'manage_sms',
            'manage_email',
            'manage_notification',

            // ===== REPORTS =====
            'view_student_reports',
            'view_attendance_reports',
            'view_exam_reports',
            'view_library_reports',

            // ===== USER SELF =====
            'view_dashboard',
            'view_profile',
            'edit_profile',
        ];

        foreach ($permissions as $permission) {
            Permission::firstOrCreate(['name' => $permission]);
        }

        /*
        |--------------------------------------------------------------------------
        | Roles
        |--------------------------------------------------------------------------
        */

        $roles = [
            'admin',
            'teacher',
            'staff',
            'student',
            'parent',
            'librarian',
            'accountant',
            'moderator',
            'committee',
        ];

        foreach ($roles as $role) {
            Role::firstOrCreate(['name' => $role]);
        }

        /*
        |--------------------------------------------------------------------------
        | Role → Permission Assignment
        |--------------------------------------------------------------------------
        */

        // ADMIN → everything
        Role::findByName('admin')->givePermissionTo(Permission::all());

        // TEACHER
        Role::findByName('teacher')->givePermissionTo([
            'view_dashboard',
            'manage_attendance',
            'manage_assignments',
            'manage_homework',
            'manage_exams',
            'manage_results',
            'view_student_reports',
            'edit_profile',
        ]);

        // STAFF
        Role::findByName('staff')->givePermissionTo([
            'view_dashboard',
            'manage_students',
            'manage_attendance',
            'view_student_reports',
            'edit_profile',
        ]);

        // STUDENT
        Role::findByName('student')->givePermissionTo([
            'view_dashboard',
            'view_results',
            'view_attendance',
            'view_profile',
        ]);

        // PARENT
        Role::findByName('parent')->givePermissionTo([
            'view_dashboard',
            'view_results',
            'view_attendance',
        ]);

        // LIBRARIAN
        Role::findByName('librarian')->givePermissionTo([
            'manage_library',
            'manage_books',
            'manage_book_category',
            'view_library_reports',
        ]);

        // ACCOUNTANT
        Role::findByName('accountant')->givePermissionTo([
            'manage_fees',
            'manage_expense',
            'manage_salary',
            'manage_transactions',
            'view_finance_reports',
        ]);

        // MODERATOR (CMS)
        Role::findByName('moderator')->givePermissionTo([
            'manage_pages',
            'manage_posts',
            'manage_category',
            'manage_gallery',
        ]);

        // COMMITTEE (Read-only)
        Role::findByName('committee')->givePermissionTo([
            'view_dashboard',
            'view_student_reports',
            'view_exam_reports',
        ]);
    }
}
