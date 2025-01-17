# ✈️Odin Flight Booker

Odin Flight Booker is a simple flight booking web application developed as part of The Odin Project. This application allows users to search for available flights, book flights, and view their booking details, all while practicing core web development skills like Ruby on Rails, ActiveRecord, and form handling.

### 🧩 Features

1. **Flight Search**: Users can search for available flights by selecting departure and arrival airports, travel date, and passenger count.
2. **Booking Creation**: Users can select a flight and input passenger details to create a new booking.
3. **Booking Details**: After booking, users can view the details of their booking, including flight information and passenger details.

### 🌐 Technologies Used

- Ruby on Rails
- HTML
- CSS
- SQL

### 🛠️ Setup and Installation

To run this project locally, follow the steps below:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Surveinit/odin-flight-booker.git
   cd odin-flight-booker

2. **Install dependencies: Make sure you have Ruby and Rails installed. Then, run:**
    ```bash
    bundle install
    ```

3. **Setup database**
    ```bash
    rails db:create
    rails db:migrate
    ```

4. **Seed the db for the initial Flight & Airport details**
    ```bash
    rails db:seed
    ```

5. **Visit the application on your Local host**
    ```bash
    http://localhost:3000
    ```

### Usage

1. Search for flights:
    - Select departure and arrival airports, travel date, and the number of passengers to search for available flights.
2. Book a flight:
    - After selecting a flight, fill in the passenger details and confirm the booking.
3. View your booking details:
    - After booking, you can view the flight and passenger details under the booking summary page.

### Acknowledgements

   - [The Odin Project](https://www.theodinproject.com) for providing the project curriculum.
