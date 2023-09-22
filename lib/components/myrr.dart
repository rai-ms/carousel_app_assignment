class Generater
{
  static List<String> generateYear()
  {
    List<String> list = ["Select"];
    for(int i = 1900; i <= 2100; ++i)
      {
        list.add(i.toString());
      }
    return list;
  }
  static List<String> generateMonth()
  {
    List<String> list = ["Select"];
    for(int i = 1; i <= 12; ++i)
    {
      list.add(i.toString());
    }
    return list;
  }
  static List<String> generateDate()
  {
    List<String> list = ["Select"];
    for(int i = 1; i <= 31; ++i)
    {
      list.add(i.toString());
    }
    return list;
  }
}