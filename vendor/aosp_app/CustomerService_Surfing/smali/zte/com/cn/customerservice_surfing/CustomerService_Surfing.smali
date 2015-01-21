.class public Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;
.super Landroid/app/Activity;
.source "CustomerService_Surfing.java"


# instance fields
.field private mImageIds:[Ljava/lang/Integer;

.field private mText:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f020001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020006

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f020004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/high16 v1, 0x7f02

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f020002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f020005

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->mImageIds:[Ljava/lang/Integer;

    .line 30
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f040001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f040002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f040003

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f040004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f040005

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f040006

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->mText:[Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->setContentView(I)V

    .line 38
    const v1, 0x7f060001

    invoke-virtual {p0, v1}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 40
    .local v7, list:Landroid/widget/ListView;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v2, lstImageItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v6, v1, :cond_0

    .line 43
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ItemImage"

    iget-object v3, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->mImageIds:[Ljava/lang/Integer;

    aget-object v3, v3, v6

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "ItemTitle"

    iget-object v3, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->mText:[Ljava/lang/Integer;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 48
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030002

    new-array v4, v10, [Ljava/lang/String;

    const-string v1, "ItemImage"

    aput-object v1, v4, v9

    const/4 v1, 0x1

    const-string v5, "ItemTitle"

    aput-object v5, v4, v1

    new-array v5, v10, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 53
    .local v0, saImageItems:Landroid/widget/SimpleAdapter;
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setSelection(I)V

    .line 56
    new-instance v1, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$1;

    invoke-direct {v1, p0}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$1;-><init>(Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;)V

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    return-void

    .line 48
    :array_0
    .array-data 0x4
        0x3t 0x0t 0x6t 0x7ft
        0x4t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method public onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
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
    .line 66
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 70
    :pswitch_0
    invoke-virtual {p0}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->startEhall()V

    goto :goto_0

    .line 76
    :pswitch_1
    invoke-virtual {p0}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->startSubscription()V

    goto :goto_0

    .line 82
    :pswitch_2
    const v1, 0x7f04000b

    invoke-virtual {p0, v1}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04000c

    invoke-virtual {p0, v2}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :pswitch_3
    invoke-virtual {p0}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->startcustomerhotline()V

    goto :goto_0

    .line 93
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lzte/com/cn/customerservice_surfing/Globalhotline;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 101
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_5
    invoke-virtual {p0}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->startServiceGuide()V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "phoneNumber"
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    .line 237
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 238
    .local v7, telMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 242
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 244
    .local v4, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/telephony/gsm/SmsManager;->getDefault()Landroid/telephony/gsm/SmsManager;

    move-result-object v0

    .line 245
    .local v0, sms:Landroid/telephony/gsm/SmsManager;
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/gsm/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 246
    const v1, 0x7f04000d

    invoke-virtual {p0, v1}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v0           #sms:Landroid/telephony/gsm/SmsManager;
    .end local v4           #pi:Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v6

    .line 250
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 255
    .end local v6           #e:Ljava/lang/Exception;
    :cond_0
    const v1, 0x7f04000e

    invoke-virtual {p0, v1}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public startEhall()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040013

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x7f05

    new-instance v2, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$2;

    invoke-direct {v2, p0}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$2;-><init>(Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 130
    return-void
.end method

.method public startServiceGuide()V
    .locals 3

    .prologue
    .line 180
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050002

    new-instance v2, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$6;

    invoke-direct {v2, p0}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$6;-><init>(Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 205
    return-void
.end method

.method public startSubscription()V
    .locals 3

    .prologue
    .line 134
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040013

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050001

    new-instance v2, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$3;

    invoke-direct {v2, p0}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$3;-><init>(Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 153
    return-void
.end method

.method public startWeb(Ljava/lang/String;)V
    .locals 3
    .parameter "strurl"

    .prologue
    .line 229
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 230
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 231
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->startActivity(Landroid/content/Intent;)V

    .line 232
    return-void
.end method

.method public startcustomerhotline()V
    .locals 3

    .prologue
    .line 157
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f04001b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f04000f

    new-instance v2, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$5;

    invoke-direct {v2, p0}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$5;-><init>(Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040010

    new-instance v2, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$4;

    invoke-direct {v2, p0}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$4;-><init>(Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 176
    return-void
.end method

.method public startztehotline(I)V
    .locals 3
    .parameter "resId"

    .prologue
    .line 209
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040018

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040019

    new-instance v2, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$8;

    invoke-direct {v2, p0, p1}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$8;-><init>(Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f04001a

    new-instance v2, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$7;

    invoke-direct {v2, p0}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$7;-><init>(Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 226
    return-void
.end method
