.class Lcom/zte/heartyservice/setting/NewPackageShare$ItemClickListener;
.super Ljava/lang/Object;
.source "NewPackageShare.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/NewPackageShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/NewPackageShare;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/NewPackageShare;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/zte/heartyservice/setting/NewPackageShare$ItemClickListener;->this$0:Lcom/zte/heartyservice/setting/NewPackageShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "rowid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 206
    .local v0, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "itemText"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 207
    .local v1, itemText:Ljava/lang/String;
    const-string v3, "itemImage"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 209
    .local v2, object:Ljava/lang/Object;
    packed-switch p3, :pswitch_data_0

    .line 283
    :goto_0
    return-void

    .line 211
    :pswitch_0
    const-string v3, "share"

    const-string v4, "share by bluetooth"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare$ItemClickListener;->this$0:Lcom/zte/heartyservice/setting/NewPackageShare;

    #calls: Lcom/zte/heartyservice/setting/NewPackageShare;->shareByBluetooth()V
    invoke-static {v3}, Lcom/zte/heartyservice/setting/NewPackageShare;->access$000(Lcom/zte/heartyservice/setting/NewPackageShare;)V

    goto :goto_0

    .line 216
    :pswitch_1
    const-string v3, "share"

    const-string v4, "share by qrcode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare$ItemClickListener;->this$0:Lcom/zte/heartyservice/setting/NewPackageShare;

    #calls: Lcom/zte/heartyservice/setting/NewPackageShare;->shareByQRCode()V
    invoke-static {v3}, Lcom/zte/heartyservice/setting/NewPackageShare;->access$100(Lcom/zte/heartyservice/setting/NewPackageShare;)V

    goto :goto_0

    .line 221
    :pswitch_2
    const-string v3, "share"

    const-string v4, "share by sms"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare$ItemClickListener;->this$0:Lcom/zte/heartyservice/setting/NewPackageShare;

    #calls: Lcom/zte/heartyservice/setting/NewPackageShare;->shareBySms()V
    invoke-static {v3}, Lcom/zte/heartyservice/setting/NewPackageShare;->access$200(Lcom/zte/heartyservice/setting/NewPackageShare;)V

    goto :goto_0

    .line 226
    :pswitch_3
    const-string v3, "share"

    const-string v4, "share by email"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare$ItemClickListener;->this$0:Lcom/zte/heartyservice/setting/NewPackageShare;

    #calls: Lcom/zte/heartyservice/setting/NewPackageShare;->shareByEmail()V
    invoke-static {v3}, Lcom/zte/heartyservice/setting/NewPackageShare;->access$300(Lcom/zte/heartyservice/setting/NewPackageShare;)V

    goto :goto_0

    .line 232
    :pswitch_4
    const-string v3, "share"

    const-string v4, "share by aliveshare"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare$ItemClickListener;->this$0:Lcom/zte/heartyservice/setting/NewPackageShare;

    #calls: Lcom/zte/heartyservice/setting/NewPackageShare;->shareByAliveShare()V
    invoke-static {v3}, Lcom/zte/heartyservice/setting/NewPackageShare;->access$400(Lcom/zte/heartyservice/setting/NewPackageShare;)V

    goto :goto_0

    .line 238
    :pswitch_5
    const-string v3, "share"

    const-string v4, "share by weixin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare$ItemClickListener;->this$0:Lcom/zte/heartyservice/setting/NewPackageShare;

    #getter for: Lcom/zte/heartyservice/setting/NewPackageShare;->weixinClassName:Ljava/lang/String;
    invoke-static {v3}, Lcom/zte/heartyservice/setting/NewPackageShare;->access$500(Lcom/zte/heartyservice/setting/NewPackageShare;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare$ItemClickListener;->this$0:Lcom/zte/heartyservice/setting/NewPackageShare;

    #calls: Lcom/zte/heartyservice/setting/NewPackageShare;->shareByWeixin()V
    invoke-static {v3}, Lcom/zte/heartyservice/setting/NewPackageShare;->access$600(Lcom/zte/heartyservice/setting/NewPackageShare;)V

    goto :goto_0

    .line 244
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare$ItemClickListener;->this$0:Lcom/zte/heartyservice/setting/NewPackageShare;

    #getter for: Lcom/zte/heartyservice/setting/NewPackageShare;->weiboClassName:Ljava/lang/String;
    invoke-static {v3}, Lcom/zte/heartyservice/setting/NewPackageShare;->access$700(Lcom/zte/heartyservice/setting/NewPackageShare;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 246
    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare$ItemClickListener;->this$0:Lcom/zte/heartyservice/setting/NewPackageShare;

    #calls: Lcom/zte/heartyservice/setting/NewPackageShare;->shareBySinaWeibo()V
    invoke-static {v3}, Lcom/zte/heartyservice/setting/NewPackageShare;->access$800(Lcom/zte/heartyservice/setting/NewPackageShare;)V

    goto :goto_0

    .line 249
    :cond_1
    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare$ItemClickListener;->this$0:Lcom/zte/heartyservice/setting/NewPackageShare;

    #calls: Lcom/zte/heartyservice/setting/NewPackageShare;->shareByYixin()V
    invoke-static {v3}, Lcom/zte/heartyservice/setting/NewPackageShare;->access$900(Lcom/zte/heartyservice/setting/NewPackageShare;)V

    goto :goto_0

    .line 255
    :pswitch_6
    const-string v3, "share"

    const-string v4, "share by sinaweibo"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare$ItemClickListener;->this$0:Lcom/zte/heartyservice/setting/NewPackageShare;

    #getter for: Lcom/zte/heartyservice/setting/NewPackageShare;->weixinClassName:Ljava/lang/String;
    invoke-static {v3}, Lcom/zte/heartyservice/setting/NewPackageShare;->access$500(Lcom/zte/heartyservice/setting/NewPackageShare;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 258
    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare$ItemClickListener;->this$0:Lcom/zte/heartyservice/setting/NewPackageShare;

    #getter for: Lcom/zte/heartyservice/setting/NewPackageShare;->weiboClassName:Ljava/lang/String;
    invoke-static {v3}, Lcom/zte/heartyservice/setting/NewPackageShare;->access$700(Lcom/zte/heartyservice/setting/NewPackageShare;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 260
    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare$ItemClickListener;->this$0:Lcom/zte/heartyservice/setting/NewPackageShare;

    #calls: Lcom/zte/heartyservice/setting/NewPackageShare;->shareBySinaWeibo()V
    invoke-static {v3}, Lcom/zte/heartyservice/setting/NewPackageShare;->access$800(Lcom/zte/heartyservice/setting/NewPackageShare;)V

    goto/16 :goto_0

    .line 263
    :cond_2
    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare$ItemClickListener;->this$0:Lcom/zte/heartyservice/setting/NewPackageShare;

    #calls: Lcom/zte/heartyservice/setting/NewPackageShare;->shareByYixin()V
    invoke-static {v3}, Lcom/zte/heartyservice/setting/NewPackageShare;->access$900(Lcom/zte/heartyservice/setting/NewPackageShare;)V

    goto/16 :goto_0

    .line 267
    :cond_3
    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare$ItemClickListener;->this$0:Lcom/zte/heartyservice/setting/NewPackageShare;

    #calls: Lcom/zte/heartyservice/setting/NewPackageShare;->shareByYixin()V
    invoke-static {v3}, Lcom/zte/heartyservice/setting/NewPackageShare;->access$900(Lcom/zte/heartyservice/setting/NewPackageShare;)V

    goto/16 :goto_0

    .line 273
    :pswitch_7
    const-string v3, "share"

    const-string v4, "share by Yixin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare$ItemClickListener;->this$0:Lcom/zte/heartyservice/setting/NewPackageShare;

    #calls: Lcom/zte/heartyservice/setting/NewPackageShare;->shareByYixin()V
    invoke-static {v3}, Lcom/zte/heartyservice/setting/NewPackageShare;->access$900(Lcom/zte/heartyservice/setting/NewPackageShare;)V

    goto/16 :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
