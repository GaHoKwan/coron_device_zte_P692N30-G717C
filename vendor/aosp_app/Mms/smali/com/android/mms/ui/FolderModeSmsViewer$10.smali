.class Lcom/android/mms/ui/FolderModeSmsViewer$10;
.super Landroid/widget/ArrayAdapter;
.source "FolderModeSmsViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FolderModeSmsViewer;->onMessageItemClick()V
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
.field final synthetic this$0:Lcom/android/mms/ui/FolderModeSmsViewer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FolderModeSmsViewer;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 1307
    .local p4, x2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$10;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1309
    invoke-super/range {p0 .. p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 1311
    .local v9, v:Landroid/view/View;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1312
    .local v8, url:Ljava/lang/String;
    move-object v0, v9

    check-cast v0, Landroid/widget/TextView;

    move-object v7, v0

    .line 1313
    .local v7, tv:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/mms/ui/FolderModeSmsViewer$10;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1315
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 1316
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1317
    const/16 v10, 0xa

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1318
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v1, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1320
    :cond_0
    const-string v6, "tel:"

    .line 1321
    .local v6, telPrefix:Ljava/lang/String;
    const-string v5, "smsto:"

    .line 1322
    .local v5, smsPrefix:Ljava/lang/String;
    const-string v3, "mailto"

    .line 1323
    .local v3, mailPrefix:Ljava/lang/String;
    const-string v10, "tel:"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1324
    const-string v10, "tel:"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1331
    :cond_1
    :goto_0
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1335
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #mailPrefix:Ljava/lang/String;
    .end local v5           #smsPrefix:Ljava/lang/String;
    .end local v6           #telPrefix:Ljava/lang/String;
    .end local v7           #tv:Landroid/widget/TextView;
    .end local v8           #url:Ljava/lang/String;
    :goto_1
    return-object v9

    .line 1325
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v3       #mailPrefix:Ljava/lang/String;
    .restart local v5       #smsPrefix:Ljava/lang/String;
    .restart local v6       #telPrefix:Ljava/lang/String;
    .restart local v7       #tv:Landroid/widget/TextView;
    .restart local v8       #url:Ljava/lang/String;
    :cond_2
    const-string v10, "smsto:"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1326
    const-string v10, "smsto:"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1327
    :cond_3
    const-string v10, "mailto"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1328
    invoke-static {v8}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v4

    .line 1329
    .local v4, mt:Landroid/net/MailTo;
    invoke-virtual {v4}, Landroid/net/MailTo;->getTo()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 1332
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #mailPrefix:Ljava/lang/String;
    .end local v4           #mt:Landroid/net/MailTo;
    .end local v5           #smsPrefix:Ljava/lang/String;
    .end local v6           #telPrefix:Ljava/lang/String;
    .end local v7           #tv:Landroid/widget/TextView;
    .end local v8           #url:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1333
    .local v2, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "Mms/FolderModeSmsViewer"

    const-string v11, "  NameNotFoundException"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
