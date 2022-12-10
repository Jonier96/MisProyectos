from sqlalchemy import create_engine, MetaData

engine = create_engine("mysql+pymysql://JONIERCM:Martinezjc96localhost:7276/Loginapp")

conn = engine.connect()

meta_data = MetaData()
