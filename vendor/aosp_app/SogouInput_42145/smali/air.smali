.class Lair;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Laiq;


# direct methods
.method constructor <init>(Laiq;)V
    .locals 0
    .parameter

    .prologue
    .line 1249
    iput-object p1, p0, Lair;->a:Laiq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const v7, 0x7f090025

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 1253
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click view id is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laia;->a(Laia;Ljava/lang/String;)V

    .line 1254
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1255
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->b(Laia;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    .line 1256
    :goto_0
    iget-object v2, p0, Lair;->a:Laiq;

    iget-object v2, v2, Laiq;->a:Laia;

    invoke-static {v2}, Laia;->a(Laia;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1257
    iget-object v4, p0, Lair;->a:Laiq;

    iget-object v4, v4, Laiq;->a:Laia;

    invoke-static {v4}, Laia;->a(Laia;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    .line 1259
    if-lt v0, v2, :cond_6

    if-gt v0, v4, :cond_6

    .line 1260
    sub-int/2addr v0, v2

    move v2, v0

    .line 1262
    :goto_1
    if-ltz v1, :cond_0

    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1264
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget v0, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->d:I

    packed-switch v0, :pswitch_data_0

    .line 1374
    :cond_0
    :goto_2
    :pswitch_0
    return-void

    :cond_1
    move v0, v1

    .line 1255
    goto :goto_0

    .line 1269
    :pswitch_1
    invoke-static {}, Laox;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1270
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->b(Laia;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1271
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Laja;

    move-result-object v2

    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Laja;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 1274
    :cond_2
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1275
    const/16 v4, 0x69

    iput v4, v0, Landroid/os/Message;->what:I

    .line 1276
    iget-object v4, p0, Lair;->a:Laiq;

    iget-object v4, v4, Laiq;->a:Laia;

    invoke-static {v4}, Laia;->a(Laia;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1277
    iget-object v4, p0, Lair;->a:Laiq;

    iget-object v4, v4, Laiq;->a:Laia;

    invoke-static {v4}, Laia;->a(Laia;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1278
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iput v8, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->d:I

    .line 1279
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Laja;

    move-result-object v4

    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->g:Ljava/lang/String;

    invoke-virtual {v4, v0}, Laja;->b(Ljava/lang/String;)V

    .line 1280
    if-le v2, v3, :cond_0

    .line 1281
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1282
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1283
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiu;

    .line 1284
    iget-object v1, v0, Laiu;->b:Landroid/widget/ImageView;

    const v2, 0x7f0200fd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1285
    iget-object v1, v0, Laiu;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1286
    iget-object v1, v0, Laiu;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lair;->a:Laiq;

    iget-object v2, v2, Laiq;->a:Laia;

    invoke-static {v2}, Laia;->a(Laia;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1287
    iget-object v1, v0, Laiu;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lair;->a:Laiq;

    iget-object v2, v2, Laiq;->a:Laia;

    invoke-static {v2}, Laia;->a(Laia;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b03ef

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1288
    iget-object v0, v0, Laiu;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1293
    :pswitch_2
    invoke-static {}, Laox;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1294
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->b(Laia;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1295
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Laja;

    move-result-object v2

    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Laja;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1298
    :cond_3
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1299
    const/16 v4, 0x69

    iput v4, v0, Landroid/os/Message;->what:I

    .line 1300
    iget-object v4, p0, Lair;->a:Laiq;

    iget-object v4, v4, Laiq;->a:Laia;

    invoke-static {v4}, Laia;->a(Laia;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1301
    iget-object v4, p0, Lair;->a:Laiq;

    iget-object v4, v4, Laiq;->a:Laia;

    invoke-static {v4}, Laia;->a(Laia;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1302
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iput v8, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->d:I

    .line 1303
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Laja;

    move-result-object v4

    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->g:Ljava/lang/String;

    invoke-virtual {v4, v0}, Laja;->b(Ljava/lang/String;)V

    .line 1304
    if-le v2, v3, :cond_0

    .line 1305
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1306
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1307
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiu;

    .line 1308
    iget-object v1, v0, Laiu;->b:Landroid/widget/ImageView;

    const v2, 0x7f0200fd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1309
    iget-object v1, v0, Laiu;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1310
    iget-object v1, v0, Laiu;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lair;->a:Laiq;

    iget-object v2, v2, Laiq;->a:Laia;

    invoke-static {v2}, Laia;->a(Laia;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1311
    iget-object v1, v0, Laiu;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lair;->a:Laiq;

    iget-object v2, v2, Laiq;->a:Laia;

    invoke-static {v2}, Laia;->a(Laia;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b03ef

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1312
    iget-object v0, v0, Laiu;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1317
    :pswitch_3
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Laja;

    move-result-object v2

    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget-object v3, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->b:Ljava/lang/String;

    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget v0, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->c:I

    invoke-virtual {v2, v3, v0}, Laja;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1319
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Lajd;

    move-result-object v3

    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->g:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lajd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1320
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    const-string v1, "apk file not exist!"

    invoke-static {v0, v1}, Laia;->c(Laia;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1327
    :pswitch_4
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    const-string v4, "===========pause==========="

    invoke-static {v0, v4}, Laia;->a(Laia;Ljava/lang/String;)V

    .line 1328
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Laja;

    move-result-object v4

    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->g:Ljava/lang/String;

    invoke-virtual {v4, v0}, Laja;->a(Ljava/lang/String;)Laix;

    move-result-object v0

    .line 1329
    if-eqz v0, :cond_4

    .line 1330
    invoke-virtual {v0}, Laix;->a()V

    .line 1333
    :cond_4
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->d:I

    .line 1334
    if-le v2, v3, :cond_0

    .line 1335
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1336
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1337
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiu;

    .line 1338
    iget-object v1, v0, Laiu;->b:Landroid/widget/ImageView;

    const v2, 0x7f0200fa

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1339
    iget-object v1, v0, Laiu;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1340
    iget-object v1, v0, Laiu;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lair;->a:Laiq;

    iget-object v2, v2, Laiq;->a:Laia;

    invoke-static {v2}, Laia;->a(Laia;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1341
    iget-object v1, v0, Laiu;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lair;->a:Laiq;

    iget-object v2, v2, Laiq;->a:Laia;

    invoke-static {v2}, Laia;->a(Laia;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b03ee

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1342
    iget-object v0, v0, Laiu;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1347
    :pswitch_5
    invoke-static {}, Laox;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1348
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->b(Laia;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1349
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Laja;

    move-result-object v2

    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Laja;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1352
    :cond_5
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1353
    const/16 v4, 0x69

    iput v4, v0, Landroid/os/Message;->what:I

    .line 1354
    iget-object v4, p0, Lair;->a:Laiq;

    iget-object v4, v4, Laiq;->a:Laia;

    invoke-static {v4}, Laia;->a(Laia;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1355
    iget-object v4, p0, Lair;->a:Laiq;

    iget-object v4, v4, Laiq;->a:Laia;

    invoke-static {v4}, Laia;->a(Laia;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1356
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iput v8, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->d:I

    .line 1357
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Laja;

    move-result-object v4

    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->g:Ljava/lang/String;

    invoke-virtual {v4, v0}, Laja;->b(Ljava/lang/String;)V

    .line 1358
    if-le v2, v3, :cond_0

    .line 1359
    iget-object v0, p0, Lair;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1360
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1361
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiu;

    .line 1362
    iget-object v1, v0, Laiu;->b:Landroid/widget/ImageView;

    const v2, 0x7f0200fd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1363
    iget-object v1, v0, Laiu;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1364
    iget-object v1, v0, Laiu;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lair;->a:Laiq;

    iget-object v2, v2, Laiq;->a:Laia;

    invoke-static {v2}, Laia;->a(Laia;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1365
    iget-object v1, v0, Laiu;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lair;->a:Laiq;

    iget-object v2, v2, Laiq;->a:Laia;

    invoke-static {v2}, Laia;->a(Laia;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b03ef

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1366
    iget-object v0, v0, Laiu;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    move v2, v3

    goto/16 :goto_1

    .line 1264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
