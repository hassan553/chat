import 'package:supabase_flutter/supabase_flutter.dart';

class Constants{
 static  const apiKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJxYm1udHdsbGJrcnZnc25kZm5qIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzI4NzkxMTcsImV4cCI6MjA0ODQ1NTExN30.hU3W-DDSk5pkINAZW9Iw7lLVyTXr_pZX7A9QgiRrmlk';
static const supabaseUrl = 'https://bqbmntwllbkrvgsndfnj.supabase.co';
static final supabaseClient = Supabase.instance.client;

}