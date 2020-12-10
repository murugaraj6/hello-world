11G New features:
				1. Listagg
				2. Sequences in PL/SQL Expressions
				3. Named and Mixed Notation in PL/SQL Subprogram Invocations - Calling function in SELECT statement.
				4. Bulk Collection - PLS-00436 Restriction in FORALL Statements Removed
				
1. Listagg.				
				
2. Sequences in PL/SQL Expressions
              l_value VARCHAR2(10):= test1_seq.NEXTVAL; --We can assign sequence to the variable directly	
				
				
3. Named and Mixed Notation in PL/SQL Subprogram Invocations - Calling function in SELECT statement.

			SELECT test_func(10, 20) FROM dual;                                 --10G
			--Mixed Notation
            SELECT test_func(10, p_value_2 => 20) FROM dual;				    --11G
			--Named Notation 
			SELECT test_func(p_value_2=>10, p_value_2 => 20) FROM dual;         --11G
			
4. Bulk Collection - PLS-00436 Restriction in FORALL Statements Removed

         -- Alter the data in the collection.
         FOR i IN l_tab.first .. l_tab.last LOOP
           l_tab(i).description := 'Description for ' || i;
         END LOOP;
         
         -- Update the table using the collection.
         FORALL i IN l_tab.first .. l_tab.last
           UPDATE forall_test
           SET    description = l_tab(i).description         --11G 
           WHERE  id          = l_tab(i).id;

        Notice both the SET and WHERE clauses contain references to individual columns in the collection
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				