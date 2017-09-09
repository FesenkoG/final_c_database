#include <iostream>
#include <iomanip>
#include <map>
#include <set>

using namespace std;
class Date {
public:
    Date(){
        year = 0;
        month = 0;
        day = 0;
    }
    Date(int y, int m, int d){
        if(m < 1 || m > 12){
            throw runtime_error("Month value is invalid: " + to_string(m));
        }
        if(d < 0 || d > 31){
            throw runtime_error("Day value is invalid: " + to_string(d));
        }
        year = y;
        month = m;
        day = d;
    }
    int GetYear() const{
        return year;
    }
    int GetMonth() const{
        return month;
    }
    int GetDay() const{
        return day;
    }

private:
    int year;
    int month;
    int day;
};

ostream& operator<<(ostream& stream, const Date& date){
    stream << setfill('0') << setw(4) << date.GetYear() << "-"
           << setfill('0') << setw(2) << date.GetMonth() << "-"
           << setfill('0') << setw(2) << date.GetDay();
    return stream;
}
istream& operator>>(istream& stream, Date& date){
    int y, m, d;
    char first, second;

    if(stream){
        stream >> y;
        stream >> first;
        stream >> m;
        stream >> second;
        if(stream){
            stream >> d;
            if(first != '-' || second != '-'){
                throw runtime_error("Wrong date format: " + to_string(y) + first
                                    + to_string(m) + second + to_string(d));
            }
            date = {y, m, d};
        }

    }
    return stream;

}

bool operator<(const Date& lhs, const Date& rhs){
    if(lhs.GetYear() != rhs.GetYear()){
        return lhs.GetYear() < rhs.GetYear();
    }
    if(lhs.GetMonth() != rhs.GetMonth()){
        return lhs.GetMonth() < rhs.GetMonth();
    }
    if(lhs.GetDay() != rhs.GetDay()){
        return lhs.GetDay() < rhs.GetDay();
    }
    return false;

}

class Database {
public:
    void AddEvent(const Date& date, const string& event){
        base[date].insert(event);
    }
    bool DeleteEvent(const Date& date, const string& event){
        if(base.count(date) > 0){
            if(base[date].count(event) > 0){
                base[date].erase(event);
            } else{
                return false;
            }
        } else{
            return false;
        }
        return true;

    }
    int  DeleteDate(const Date& date){
        int n = base[date].size();
        base.erase(date);
        return n;
    }


    void Find(const Date& date) const{
        if(base.count(date) > 0) {
            for (const auto &e : base.at(date)) {
                cout << e << endl;
            }
        }
    }

    void Print() const{
        for(const auto& d : base){
            for(const auto& s : d.second){
                cout << d.first << " " << s << endl;
            }
        }
    }

private:
    map<Date, set<string> > base;
};

int main() {
    Database db;

    string command;
    try {
        while (cin >> command) {
            if (command == "Add") {
                Date d;
                string event;
                cin >> d;
                cin >> event;
                db.AddEvent(d, event);
            } else if (command == "Del") {
                Date d;
                string event;
                cin >> d;
                if (cin.peek() != '\n') {
                    cin >> event;
                }
                if (event != "") {
                    if (db.DeleteEvent(d, event)) {
                        cout << "Deleted successfully" << endl;
                    } else {
                        cout << "Event not found" << endl;
                    }
                } else {
                    cout << "Deleted " << db.DeleteDate(d) << " events" << endl;
                }
            } else if (command == "Find") {
                Date d;
                cin >> d;
                db.Find(d);
            } else if (command == "Print") {
                db.Print();
            } else {
                cout << "Unknown command: " << command << endl;
            }
        }
    } catch (const runtime_error& ex){
        cout << ex.what();
    }

    return 0;
}