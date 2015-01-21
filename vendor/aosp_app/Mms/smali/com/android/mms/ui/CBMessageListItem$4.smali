.class Lcom/android/mms/ui/CBMessageListItem$4;
.super Landroid/widget/ArrayAdapter;
.source "CBMessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CBMessageListItem;->onMessageListItemClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CBMessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CBMessageListItem;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 220
    .local p4, x2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/mms/ui/CBMessageListItem$4;->this$0:Lcom/android/mms/ui/CBMessageListItem;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 223
    invoke-super/range {p0 .. p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .local v8, v:Landroid/view/View;
    move-object v5, v8

    .line 224
    check-cast v5, Landroid/widget/TextView;

    .line 225
    .local v5, tv:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 226
    .local v7, url:Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 228
    .local v6, uri:Landroid/net/Uri;
    const-string v4, "tel:"

    .line 229
    .local v4, telPrefix:Ljava/lang/String;
    const/4 v0, 0x0

    .line 231
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v9, p0, Lcom/android/mms/ui/CBMessageListItem$4;->this$0:Lcom/android/mms/ui/CBMessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/mms/ui/CBMessageListItem;->access$200(Lcom/android/mms/ui/CBMessageListItem;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v10, v11, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 236
    :goto_0
    if-eqz v0, :cond_1

    .line 237
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 238
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 239
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v0, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 251
    :goto_1
    const-string v3, "smsto:"

    .line 252
    .local v3, smsPrefix:Ljava/lang/String;
    const-string v1, "mailto"

    .line 253
    .local v1, mailPrefix:Ljava/lang/String;
    const-string v9, "tel:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 254
    const-string v9, "tel:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/CBMessageListItem$4;->this$0:Lcom/android/mms/ui/CBMessageListItem;

    #getter for: Lcom/android/mms/ui/CBMessageListItem;->mDefaultCountryIso:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/mms/ui/CBMessageListItem;->access$400(Lcom/android/mms/ui/CBMessageListItem;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 256
    if-nez v7, :cond_0

    .line 257
    const-string v9, "CBMessageListItem"

    const-string v10, "url turn to null after calling PhoneNumberUtils.formatNumber"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "tel:"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 271
    :cond_0
    :goto_2
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    return-object v8

    .line 241
    .end local v1           #mailPrefix:Ljava/lang/String;
    .end local v3           #smsPrefix:Ljava/lang/String;
    :cond_1
    const-string v9, "tel:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 242
    iget-object v9, p0, Lcom/android/mms/ui/CBMessageListItem$4;->this$0:Lcom/android/mms/ui/CBMessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/mms/ui/CBMessageListItem;->access$300(Lcom/android/mms/ui/CBMessageListItem;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0200a5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 243
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 244
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 245
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v0, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 247
    :cond_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 260
    .restart local v1       #mailPrefix:Ljava/lang/String;
    .restart local v3       #smsPrefix:Ljava/lang/String;
    :cond_3
    const-string v9, "smsto:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 261
    const-string v9, "smsto:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/CBMessageListItem$4;->this$0:Lcom/android/mms/ui/CBMessageListItem;

    #getter for: Lcom/android/mms/ui/CBMessageListItem;->mDefaultCountryIso:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/mms/ui/CBMessageListItem;->access$400(Lcom/android/mms/ui/CBMessageListItem;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 263
    if-nez v7, :cond_0

    .line 264
    const-string v9, "CBMessageListItem"

    const-string v10, "url turn to null after calling PhoneNumberUtils.formatNumber"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "smsto:"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 267
    :cond_4
    const-string v9, "mailto"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 268
    invoke-static {v7}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v2

    .line 269
    .local v2, mt:Landroid/net/MailTo;
    invoke-virtual {v2}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 233
    .end local v1           #mailPrefix:Ljava/lang/String;
    .end local v2           #mt:Landroid/net/MailTo;
    .end local v3           #smsPrefix:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto/16 :goto_0
.end method
