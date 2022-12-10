from numbers import Integral
import string
from sqlalchemy import Table, Column, column, true
from sqlalchemy.sql.sqltypes import Integer, String
from config.db import engine, meta_data

users = Table("users", meta_data,
                column("id", Integer, primary_key=true),
                column("gmail", string(40), nullable=False),
                column("passw", string(10), nullable=False),
)

meta_data.create_all(engine)