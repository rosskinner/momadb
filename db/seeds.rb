Artist.destroy_all
Work.destroy_all

Artist.create(:name => 'Joan Miro', :nationality => 'Spanish', :dob => '1893/04/20', :period => '20th century', :image => 'http://upload.wikimedia.org/wikipedia/commons/5/5c/Portrait_of_Joan_Miro%2C_Barcelona_1935_June_13.jpg')
Artist.create(:name => 'Joan Miro', :nationality => 'Spanish', :dob => '1893-04-20', :period => '20th century', :image => 'http://upload.wikimedia.org/wikipedia/commons/5/5c/Portrait_of_Joan_Miro%2C_Barcelona_1935_June_13.j...')
Artist.create(:name => 'Pablo Picasso', :nationality => 'Spanish', :dob => '1881-10-25', :period =>'20th century', :image => 'http://upload.wikimedia.org/wikipedia/en/4/41/Portrait_of_Pablo_Picasso%2C_1908-1909%2C_anonymous_ph...')
Artist.create(:name => 'Salvador Dalí', :nationality => 'Spanish', :dob => '1904-05-11', :period => '20th century', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Salvador_Dal%C3%AD_1939.jpg/640px-Salvador_...')
Artist.create(:name => 'Vincent van Gogh', :nationality =>'Dutch', :dob => '1853-03-30', :period => '19th century', :image => 'http://iv1.lisimg.com/image/2167165/600full-vincent-van-gogh.jpg')
Work.create(:title => 'Still Life with Old Shoe', :year => '1937', :medium => 'Oil on Canvas', :style => 'Abstract', :image => 'http://upload.wikimedia.org/wikipedia/en/8/81/Miro_Still_Life_with_Old_Shoe.jpg')
Work.create(:title => 'Swans Reflecting Elephants', :year => '1937', :medium => 'Oil on Canvas', :style => 'Surrealism', :image => 'http://upload.wikimedia.org/wikipedia/en/f/f6/Swans_reflecting_elephants.jpg')
Work.create(:title => 'Le Rêve', :year => '1932', :medium => 'Oil on Canvas', :style => 'Fauvism', :image => 'http://upload.wikimedia.org/wikipedia/en/thumb/9/9d/Le-reve-1932.jpg/300px-Le-reve-1932.jpg')
Work.create(:title => 'The Harlequins Carnival', :year => '1924', :medium => 'Oil on Canvas', :style => 'Surrealism', :image => 'http://upload.wikimedia.org/wikipedia/en/2/2d/The_Harlequin%27s_Carnival.jpg')
Work.create(:title => 'Premonition of Civil War', :year => '1936', :medium => 'Oil on Canvas', :style => 'Surrealism', :image => 'http://upload.wikimedia.org/wikipedia/en/8/89/SalvadorDali-SoftConstructionWithBeans.jpg')
Work.create(:title => 'Starry Night over the Rhone', :year => '1888', :medium => 'Oil on Canvas', :style => 'Post-Impressionist', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Starry_Night_Over_the_Rhone.jpg/1024px-Star...')
Work.create(:title => 'Guernica', :year => '1937', :medium => 'Oil on Canvas', :style => 'Cubism', :image => 'http://upload.wikimedia.org/wikipedia/en/7/74/PicassoGuernica.jpg')
Work.create(:title => 'Starry Night', :year => '1889', :medium => 'Oil on Canvas', :style => 'Post Impressionist', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Projec...')
Work.create(:title => 'The Flight of the Dragonfly in Front of the Sun', :year => '1968', :medium => 'oil on canvas', :style => 'Abstract Art', :image => 'http://uploads0.wikipaintings.org/images/joan-miro/the-flight-of-the-dragonfly-in-front-of-the-sun.jpg')