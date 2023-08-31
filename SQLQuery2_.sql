create table ExchangeRates (ID int identity(1,1) primary key, BaseCurrency varchar(30), ToCurrency varchar(30));
alter table ExchangeRates add DealerID varchar(40) constraint ToDealerID references DealerDetails(DealerID);
alter table ExchangeRates add ExchPer int not null;


INSERT INTO ExchangeRates (BaseCurrency, ToCurrency, DealerID, ExchPer)
VALUES
    ('USD', 'EUR', 'Dealer1', 1.25),
    ('USD', 'JPY', 'Dealer1', 2.50),
    ('USD', 'INR', 'Dealer1', 2.75),
    ('USD', 'AED', 'Dealer1', 1.75),
    ('USD', 'GBP', 'Dealer1', 1.90),
    
    ('EUR', 'GBP', 'Dealer2', 2.15),
    ('GBP', 'JPY', 'Dealer2', 1.30),
    ('JPY', 'INR', 'Dealer2', 2.10),
    ('EUR', 'INR', 'Dealer2', 1.55),
    ('AED', 'INR', 'Dealer2', 2.70);
    
INSERT INTO ExchangeRates (BaseCurrency, ToCurrency, DealerID, ExchPer)
VALUES
    ('USD', 'EUR', 'Dealer3', 2.65),
    ('USD', 'JPY', 'Dealer3', 1.80),
    ('USD', 'INR', 'Dealer3', 2.35),
    ('USD', 'AED', 'Dealer3', 1.45),
    ('USD', 'GBP', 'Dealer3', 2.20),
    
    ('EUR', 'GBP', 'Dealer4', 1.90),
    ('GBP', 'JPY', 'Dealer4', 2.25),
    ('JPY', 'INR', 'Dealer4', 1.75),
    ('EUR', 'INR', 'Dealer4', 2.10),
    ('AED', 'INR', 'Dealer4', 1.60);

INSERT INTO ExchangeRates (BaseCurrency, ToCurrency, DealerID, ExchPer)
VALUES
    ('USD', 'EUR', 'Dealer5', 1.70),
    ('USD', 'JPY', 'Dealer5', 2.90),
    ('USD', 'INR', 'Dealer5', 2.20),
    ('USD', 'AED', 'Dealer5', 1.95),
    ('USD', 'GBP', 'Dealer5', 2.45),
    
    ('EUR', 'GBP', 'Dealer5', 1.80),
    ('GBP', 'JPY', 'Dealer5', 2.05),
    ('JPY', 'INR', 'Dealer5', 2.40),
    ('EUR', 'INR', 'Dealer5', 1.50),
    ('AED', 'INR', 'Dealer5', 2.25);



INSERT INTO DealerDetails (DealerID, DealerName, PhoneNumber, Email)
VALUES
    ('Dealer1', 'Company A', '1234567890', 'companya@example.com'),
    ('Dealer2', 'Company B', '9876543210', 'companyb@example.com'),
    ('Dealer3', 'Company C', '5555555555', 'companyc@example.com'),
    ('Dealer4', 'Company D', '7777777777', 'companyd@example.com'),
    ('Dealer5', 'Company E', '8888888888', 'companye@example.com');


select * from ExchangeRates;

update DealerDetails set Password_ = 'root' where Password_ is null;

select * from DealerDetails;



select TR.BaseCurrency, TR.ToCurrency, TR.BasePrice  from TransRates TR where BaseCurrency = ;


select ER.BaseCurrency, ER.ToCurrency, TR.BasePrice, ER.ExchPer, DD.DealerName, DD.PhoneNumber, DD.Email  from ExchangeRates ER  
inner join DealerDetails DD on DD.DealerID = ER.DealerID 
INNER JOIN TransRates TR ON TR.BaseCurrency = ER.BaseCurrency AND TR.ToCurrency = ER.ToCurrency 
where ER.BaseCurrency = 'USD' AND ER.ToCurrency = 'EUR' ;
