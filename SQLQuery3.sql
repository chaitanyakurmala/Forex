alter table ExchangeRates add ExchPer int not null;

create table TransRates(TransRateID int identity(1,1) primary key, BaseCurrency varchar(30), ToCurrency varchar(30), BasePrice varchar(20));

alter table ExchangeRates alter column ExchPer decimal(10,2) not null;

INSERT INTO TransRates (BaseCurrency, ToCurrency, BasePrice)
VALUES
    ('USD', 'EUR', 0.85),
    ('USD', 'JPY', 110.5),
    ('USD', 'INR', 73.5),
    ('USD', 'AED', 3.67),
    ('USD', 'GBP', 0.73),
    ('EUR', 'GBP', 0.85),
    ('GBP', 'JPY', 150.25),
    ('JPY', 'INR', 0.63),
    ('EUR', 'INR', 86.2),
    ('AED', 'INR', 20.0);

select * from dbo.ExchangeRates;

select * from dbo.TransRates;
