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
    final CartModel _cart = (VxState.store as MyStore).cart;

    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxConsumer(
            builder: (context, dynamic, status) {
              return '\$${_cart.totalPrice}'.text.xl.makeCentered();
            },
            mutations: {RemoveMutation},
            notifications: {},
          ),
          30.widthBox,
          //*Buy
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: 'Buying Not supported'.text.make(),
                ),
              );
            },
            child: 'Buy'.text.xl.make(),
          ).wh(100, 35),
        ],
      ),
    );
  }
}

//*cart list
class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;

    return _cart.items.isEmpty
        ? 'No item is added!'.text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.items?.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.done),
                trailing: IconButton(
                  onPressed: () => RemoveMutation(_cart.items[index]),
                  icon: Icon(
                    Icons.delete,
                  ),
                ),
                title: _cart.items[index].name.text.make(),
              );
            },
          );
  }
}
