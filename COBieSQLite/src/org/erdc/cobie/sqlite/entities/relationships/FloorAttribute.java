package org.erdc.cobie.sqlite.entities.relationships;

import org.erdc.cobie.sqlite.Column;
import org.erdc.cobie.sqlite.Columns;

public class FloorAttribute extends Relationship
{
    public enum ColumnName
    {        
        RefAttribute("RefAttribute"),
        RefFloor("RefFloor");

        private String columName;

        private ColumnName(final String columnName)
        {
            columName = columnName;
        }

        @Override
        public final String toString()
        {
            return columName;
        }
    }
    
    public FloorAttribute()
    {
    	super();
    	
    	Columns columns = new Columns(    			
    			new Column<Integer>(ColumnName.RefAttribute.toString(), null, true),
    			new Column<Integer>(ColumnName.RefFloor.toString(), null, true));
    	
    	addColumns(columns);
    }
    
	@Override
	public String getTableName() 
	{
		return "FloorAttribute";
	}
}