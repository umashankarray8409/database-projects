write a query from invoice and invoice_line where invoice_id start with ascending

select invoice.invoice_id 
from invoice join invoice_line on
invoice.invoice_id = invoice_line.invoice_id
order by invoice_id desc 