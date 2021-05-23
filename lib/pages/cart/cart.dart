//*utils
import '../../utils/utils.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        title: 'Cart'.text.make(),
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

//*Cart Total
class _CartTotal extends StatelessWidget {
  const _CartTotal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          '\$ 999.00'.text.xl.makeCentered(),
          30.widthBox,
          //*Buy
          ElevatedButton(
            onPressed: () {},
            child: 'Buy'.text.xl.make(),
          ).wh(100, 35),
        ],
      ),
    );
  }
}

//*cart list
class _CartList extends StatefulWidget {
  _CartList({Key key}) : super(key: key);

  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.done),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete,
            ),
          ),
          title: 'Item ${index + 1}'.text.make(),
        );
      },
    );
  }
}
