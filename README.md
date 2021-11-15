# PhotoGallery
приложение для поиска фотографий из интернета, по любому слову, используя самую большую открытую коллекцию изображений - Unsplash.

Cоздавали кастомные UICollectionViewLayout, чтобы фотографии динамически подстраивались под их реальное соотношение сторон. 
Есть возможность делиться найденными изображениями с друзьями, используя UIActivityViewController, и добавлять понравившиеся изображения на отдельный экран.

Все данные получаются из интернета, используя Unsplash JSON API, который отображает всю информацию для создания удобного интерфейса для пользователей

На главном экране можно найти картинки по лбому слову <br/> <br/>
<img src="https://github.com/K1selev/PhotoGallery/blob/main/images/1.png" width="175" height="350"> 
<img src="https://github.com/K1selev/PhotoGallery/blob/main/images/2.png" width="175" height="350"> <br/> <br/>

Если выбрать одну или несколько картинок, то становятся активными кнопки "Добавить" и "Поделиться" <br/> <br/>
<img src="https://github.com/K1selev/PhotoGallery/blob/main/images/3.png" width="175" height="350"> <br/> <br/>

По кнопке "Добавить" и подтверждения действия в AlertController происходит добавление выбранных фотографий на второй экран в "Избранное" <br/> <br/>
<img src="https://github.com/K1selev/PhotoGallery/blob/main/images/4.png" width="175" height="350">
<img src="https://github.com/K1selev/PhotoGallery/blob/main/images/6.png" width="175" height="350"> <br/> <br/>

По кнопке "Поделиться" открывается меню из которого возможны различные действия, например, сохранить в фотопленку <br/> <br/>
<img src="https://github.com/K1selev/PhotoGallery/blob/main/images/5.png" width="175" height="350"> <br/> <br/>

На втором экране при нажатии и удержании на картинке появляется контекстное меню <br/> <br/>
<img src="https://github.com/K1selev/PhotoGallery/blob/main/images/7.png" width="175" height="350">
