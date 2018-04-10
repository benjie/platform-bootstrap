CREATE TYPE word_pos as enum('left', 'right');

CREATE TABLE words(
  word                text unique not null,
  type                word_pos not null
);


create function random_word() returns text as $$
  select (
      (select word from app_public.words where type='left' order by random() limit 1)
      || '-' ||
      (select word from app_public.words where type='right' order by random() limit 1)
  ) $$ language sql;



INSERT INTO words values
  ('admiring', 'left'),
  ('adoring', 'left'),
  ('affectionate', 'left'),
  ('agitated', 'left'),
  ('amazing', 'left'),
  ('angry', 'left'),
  ('awesome', 'left'),
  ('blissful', 'left'),
  ('brave', 'left'),
  ('clever', 'left'),
  ('compassionate', 'left'),
  ('competent', 'left'),
  ('confident', 'left'),
  ('dazzling', 'left'),
  ('determined', 'left'),
  ('dreamy', 'left'),
  ('eager', 'left'),
  ('ecstatic', 'left'),
  ('elastic', 'left'),
  ('elegant', 'left'),
  ('eloquent', 'left'),
  ('epic', 'left'),
  ('fervent', 'left'),
  ('festive', 'left'),
  ('flamboyant', 'left'),
  ('focused', 'left'),
  ('friendly', 'left'),
  ('frosty', 'left'),
  ('gallant', 'left'),
  ('gifted', 'left'),
  ('gracious', 'left'),
  ('happy', 'left'),
  ('hardcore', 'left'),
  ('heuristic', 'left'),
  ('hopeful', 'left'),
  ('hungry', 'left'),
  ('infallible', 'left'),
  ('inspiring', 'left'),
  ('jolly', 'left'),
  ('jovial', 'left'),
  ('keen', 'left'),
  ('kind', 'left'),
  ('laughing', 'left'),
  ('loving', 'left'),
  ('lucid', 'left'),
  ('mystifying', 'left'),
  ('modest', 'left'),
  ('musing', 'left'),
  ('nifty', 'left'),
  ('objective', 'left'),
  ('optimistic', 'left'),
  ('peaceful', 'left'),
  ('practical', 'left'),
  ('priceless', 'left'),
  ('quizzical', 'left'),
  ('relaxed', 'left'),
  ('reverent', 'left'),
  ('romantic', 'left'),
  ('sad', 'left'),
  ('serene', 'left'),
  ('sharp', 'left'),
  ('tender', 'left'),
  ('trusting', 'left'),
  ('upbeat', 'left'),
  ('vibrant', 'left'),
  ('vigilant', 'left'),
  ('vigorous', 'left'),
  ('wizardly', 'left'),
  ('wonderful', 'left'),
  ('youthful', 'left'),
  ('zen', 'left'),
  ('aqua', 'left'),
  ('beige', 'left'),
  ('black', 'left'),
  ('blue', 'left'),
  ('cherry', 'left'),
  ('cobult', 'left'),
  ('crimson', 'left'),
  ('cyan', 'left'),
  ('fuchsia', 'left'),
  ('gold', 'left'),
  ('green', 'left'),
  ('grey', 'left'),
  ('indigo', 'left'),
  ('jade', 'left'),
  ('khaki', 'left'),
  ('navy', 'left'),
  ('olive', 'left'),
  ('orange', 'left'),
  ('pink', 'left'),
  ('red', 'left'),
  ('rose', 'left'),
  ('silver', 'left'),
  ('teal', 'left'),
  ('ultraviolet', 'left'),
  ('violet', 'left'),
  ('white', 'left'),
  ('yellow', 'left'),
  ('wind', 'right'),
  ('earth', 'right'),
  ('fire', 'right'),
  ('water', 'right'),
  ('horn', 'right'),
  ('peak', 'right'),
  ('trip', 'right'),
  ('journey', 'right'),
  ('sky', 'right'),
  ('lake', 'right'),
  ('river', 'right'),
  ('mountain', 'right'),
  ('tree', 'right'),
  ('turtle', 'right'),
  ('flower', 'right'),
  ('thunder', 'right'),
  ('rain', 'right'),
  ('snow', 'right'),
  ('wave', 'right'),
  ('bird', 'right'),
  ('sea', 'right'),
  ('dog', 'right'),
  ('cat', 'right'),
  ('island', 'right'),
  ('house', 'right'),
  ('toy', 'right'),
  ('ship', 'right'),
  ('bolt', 'right'),
  ('nut', 'right'),
  ('arrow', 'right'),
  ('allen', 'right'),
  ('almeida', 'right'),
  ('agnesi', 'right'),
  ('archimedes', 'right'),
  ('ardinghelli', 'right'),
  ('aryabhata', 'right'),
  ('austin', 'right'),
  ('babbage', 'right'),
  ('banach', 'right'),
  ('bardeen', 'right'),
  ('bartik', 'right'),
  ('bassi', 'right'),
  ('beaver', 'right'),
  ('bell', 'right'),
  ('benz', 'right'),
  ('bhabha', 'right'),
  ('bhaskara', 'right'),
  ('blackwell', 'right'),
  ('bohr', 'right'),
  ('booth', 'right'),
  ('borg', 'right'),
  ('bose', 'right'),
  ('boyd', 'right'),
  ('brahmagupta', 'right'),
  ('brattain', 'right'),
  ('brown', 'right'),
  ('carson', 'right'),
  ('chandrasekhar', 'right'),
  ('chaplygin', 'right'),
  ('chatterjee', 'right'),
  ('chebyshev', 'right'),
  ('shannon', 'right'),
  ('clarke', 'right'),
  ('colden', 'right'),
  ('cori', 'right'),
  ('cray', 'right'),
  ('curie', 'right'),
  ('darwin', 'right'),
  ('davinci', 'right'),
  ('dijkstra', 'right'),
  ('dubinsky', 'right'),
  ('easley', 'right'),
  ('edison', 'right'),
  ('einstein', 'right'),
  ('elion', 'right'),
  ('elbakyan', 'right'),
  ('engelbart', 'right'),
  ('euclid', 'right'),
  ('euler', 'right'),
  ('fermat', 'right'),
  ('fermi', 'right'),
  ('feynman', 'right'),
  ('franklin', 'right'),
  ('galileo', 'right'),
  ('gates', 'right'),
  ('goldberg', 'right'),
  ('goldstine', 'right'),
  ('goldwasser', 'right'),
  ('golick', 'right'),
  ('goodall', 'right'),
  ('haibt', 'right'),
  ('hamilton', 'right'),
  ('hawking', 'right'),
  ('heisenberg', 'right'),
  ('hermann', 'right'),
  ('heyrovsky', 'right'),
  ('hodgkin', 'right'),
  ('hoover', 'right'),
  ('hopper', 'right'),
  ('hugle', 'right'),
  ('hypatia', 'right'),
  ('jackson', 'right'),
  ('jang', 'right'),
  ('jennings', 'right'),
  ('jepsen', 'right'),
  ('johnson', 'right'),
  ('joliot', 'right'),
  ('jones', 'right'),
  ('kalam', 'right'),
  ('kapitsa', 'right'),
  ('kare', 'right'),
  ('keldysh', 'right'),
  ('keller', 'right'),
  ('kepler', 'right'),
  ('khorana', 'right'),
  ('kilby', 'right'),
  ('kirch', 'right'),
  ('knuth', 'right'),
  ('kowalevski', 'right'),
  ('lalande', 'right'),
  ('lamarr', 'right'),
  ('lamport', 'right'),
  ('leakey', 'right'),
  ('leavitt', 'right'),
  ('lewin', 'right'),
  ('lichterman', 'right'),
  ('liskov', 'right'),
  ('lovelace', 'right'),
  ('lumiere', 'right'),
  ('mahavira', 'right'),
  ('mayer', 'right'),
  ('mccarthy', 'right'),
  ('mcclintock', 'right'),
  ('mclean', 'right'),
  ('mcnulty', 'right'),
  ('mendeleev', 'right'),
  ('meitner', 'right'),
  ('meninsky', 'right'),
  ('mestorf', 'right'),
  ('minsky', 'right'),
  ('mirzakhani', 'right'),
  ('morse', 'right'),
  ('murdock', 'right'),
  ('neumann', 'right'),
  ('newton', 'right'),
  ('nightingale', 'right'),
  ('nobel', 'right'),
  ('noether', 'right'),
  ('northcutt', 'right'),
  ('noyce', 'right'),
  ('panini', 'right'),
  ('pare', 'right'),
  ('pasteur', 'right'),
  ('payne', 'right'),
  ('perlman', 'right'),
  ('pike', 'right'),
  ('poincare', 'right'),
  ('poitras', 'right'),
  ('proskuriakova', 'right'),
  ('ptolemy', 'right'),
  ('raman', 'right'),
  ('ramanujan', 'right'),
  ('ride', 'right'),
  ('montalcini', 'right'),
  ('ritchie', 'right'),
  ('roentgen', 'right'),
  ('rosalind', 'right'),
  ('saha', 'right'),
  ('sammet', 'right'),
  ('shaw', 'right'),
  ('shirley', 'right'),
  ('shockley', 'right'),
  ('sinoussi', 'right'),
  ('snyder', 'right'),
  ('spence', 'right'),
  ('stallman', 'right'),
  ('shtern', 'right'),
  ('stonebraker', 'right'),
  ('swanson', 'right'),
  ('swartz', 'right'),
  ('swirles', 'right'),
  ('tereshkova', 'right'),
  ('tesla', 'right'),
  ('thompson', 'right'),
  ('torvalds', 'right'),
  ('turing', 'right'),
  ('varahamihira', 'right'),
  ('vaughan', 'right'),
  ('visvesvaraya', 'right'),
  ('volhard', 'right'),
  ('villani', 'right'),
  ('wescoff', 'right'),
  ('wiles', 'right'),
  ('williams', 'right'),
  ('wilson', 'right'),
  ('wing', 'right'),
  ('wozniak', 'right'),
  ('wright', 'right'),
  ('yalow', 'right'),
  ('yonath', 'right'),
  ('zhukovsky', 'right');