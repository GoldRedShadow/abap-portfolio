CLASS zslan_cl_employee_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zslan_cl_employee_generator IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA employee TYPE zslan_employee.
    DATA employees TYPE TABLE OF zslan_employee.

    DATA va_inquiry TYPE zslan_va_inquiry.
    DATA va_inquiries TYPE TABLE OF ZSLAN_VA_INQUiRY.

    " Delete Employees
    DELETE FROM zslan_employee.
    out->write( |Deleted Employees: { sy-dbcnt }| ).

    " Delete Vacation Inquries
    DELETE FROM zslan_va_inquiry.
    out->write( |Deleted Inquries: { sy-dbcnt }| ).

    " Create Employees
    employee-client = '001'.
    employee-employee_id = '000001'.
    employee-employee_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    employee-first_name = 'Hans'.
    employee-last_name = 'Maier'.
    employee-entry_date = '20000501'.
    GET TIME STAMP FIELD employee-created_at.
    GET TIME STAMP FIELD employee-last_changed_at.
    employee-created_by = 'GENERATOR'.
    employee-last_changed_by = 'GENERATOR'.
    APPEND employee TO employees.

    employee-client = '001'.
    employee-employee_id = '000002'.
    employee-employee_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    employee-first_name = 'Lisa'.
    employee-last_name = 'Müller'.
    employee-entry_date = '20100701'.
    GET TIME STAMP FIELD employee-created_at.
    GET TIME STAMP FIELD employee-last_changed_at.
    employee-created_by = 'GENERATOR'.
    employee-last_changed_by = 'GENERATOR'.
    APPEND employee TO employees.

    employee-client = '001'.
    employee-employee_id = '000003'.
    employee-employee_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    employee-first_name = 'Petra'.
    employee-last_name = 'Schmid'.
    employee-entry_date = '20231001'.
    GET TIME STAMP FIELD employee-created_at.
    GET TIME STAMP FIELD employee-last_changed_at.
    employee-created_by = 'GENERATOR'.
    employee-last_changed_by = 'GENERATOR'.
    APPEND employee TO employees.

    INSERT zslan_employee FROM TABLE @employees.
    out->write( |Inserted Employees: { sy-dbcnt }| ).


    " Create Vacation Inquiries
    va_inquiry-employee_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    va_inquiry-applicant_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    va_inquiry-approver_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    va_inquiry-begin_date = '20220701'.
    va_inquiry-end_date = '20220710'.
    va_inquiry-vacation_days = 8.
    va_inquiry-comment_text = 'Sommerurlaub'.
    va_inquiry-status = 'G'.
    APPEND va_inquiry TO va_inquiries.

    va_inquiry-employee_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    va_inquiry-applicant_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    va_inquiry-approver_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    va_inquiry-begin_date = '20221227'.
    va_inquiry-end_date = '20221230'.
    va_inquiry-vacation_days = 4.
    va_inquiry-comment_text = 'Weihnachtsurlaub'.
    va_inquiry-status = 'A'.
    APPEND va_inquiry TO va_inquiries.

    va_inquiry-employee_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    va_inquiry-applicant_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    va_inquiry-approver_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    va_inquiry-begin_date = '20221228'.
    va_inquiry-end_date = '20221230'.
    va_inquiry-vacation_days = 3.
    va_inquiry-comment_text = 'Weihnachtsurlaub (2. Versuch)'.
    va_inquiry-status = 'G'.
    APPEND va_inquiry TO va_inquiries.

    va_inquiry-employee_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    va_inquiry-applicant_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    va_inquiry-approver_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    va_inquiry-begin_date = '20230527'.
    va_inquiry-end_date = '20230614'.
    va_inquiry-vacation_days = 14.
    va_inquiry-comment_text = ''.
    va_inquiry-status = 'G'.
    APPEND va_inquiry TO va_inquiries.

    va_inquiry-employee_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    va_inquiry-applicant_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    va_inquiry-approver_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    va_inquiry-begin_date = '20231220'.
    va_inquiry-end_date = '20231231'.
    va_inquiry-vacation_days = 8.
    va_inquiry-comment_text = 'Winterurlaub'.
    va_inquiry-status = 'B'.
    APPEND va_inquiry TO va_inquiries.

    va_inquiry-employee_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    va_inquiry-applicant_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    va_inquiry-approver_uuid = cl_system_uuid=>create_uuid_x16_static( ).
    va_inquiry-begin_date = '20231227'.
    va_inquiry-end_date = '20231231'.
    va_inquiry-vacation_days = 3.
    va_inquiry-comment_text = 'Weihnachtsurlaub'.
    va_inquiry-status = 'B'.
    APPEND va_inquiry TO va_inquiries.

    INSERT zslan_va_inquiry FROM TABLE @va_inquiries.
    out->write( |Inserted Inquiries: { sy-dbcnt }| ).

  ENDMETHOD.



ENDCLASS.
