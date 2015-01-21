.class public Ltmsdkobf/ht;
.super Ltmsdkobf/hq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/ht$a;,
        Ltmsdkobf/ht$b;
    }
.end annotation


# instance fields
.field private mHandlerThread:Landroid/os/HandlerThread;

.field private qr:Ltmsdkobf/ht$b;


# direct methods
.method public constructor <init>(Ltmsdkobf/hv;)V
    .locals 3
    .parameter "admin"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ltmsdkobf/hq;-><init>(Ltmsdkobf/hv;)V

    .line 36
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v0

    const-string v1, "system-sync-handler"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/ij;->e(Ljava/lang/String;I)Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/ht;->mHandlerThread:Landroid/os/HandlerThread;

    .line 38
    iget-object v0, p0, Ltmsdkobf/ht;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 39
    new-instance v0, Ltmsdkobf/ht$b;

    iget-object v1, p0, Ltmsdkobf/ht;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-direct {v0, v1}, Ltmsdkobf/ht$b;-><init>(Landroid/os/HandlerThread;)V

    iput-object v0, p0, Ltmsdkobf/ht;->qr:Ltmsdkobf/ht$b;

    .line 40
    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/StringBuilder;)V
    .locals 5
    .parameter "view"
    .parameter "stringbuilder"

    .prologue
    .line 151
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 152
    check-cast v2, Landroid/widget/TextView;

    .line 153
    .local v2, textview:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .end local v2           #textview:Landroid/widget/TextView;
    :cond_0
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 157
    check-cast v1, Landroid/view/ViewGroup;

    .line 158
    .local v1, parent:Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 159
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Ltmsdkobf/ht;->a(Landroid/view/View;Ljava/lang/StringBuilder;)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v0           #i:I
    .end local v1           #parent:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Ltmsdkobf/fx;)Ltmsdk/common/module/permission/PermissionRequestInfo;
    .locals 30
    .parameter "inContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    move-object/from16 v0, p1

    iget v7, v0, Ltmsdkobf/fx;->mCode:I

    .line 65
    .local v7, code:I
    move-object/from16 v0, p1

    iget-object v8, v0, Ltmsdkobf/fx;->mq:Landroid/os/Parcel;

    .line 66
    .local v8, data:Landroid/os/Parcel;
    const/4 v12, 0x0

    .line 70
    .local v12, info:Ltmsdk/common/module/permission/PermissionRequestInfo;
    sget v28, Ltmsdkobf/gd$c;->mE:I

    move/from16 v0, v28

    if-ne v7, v0, :cond_8

    .line 72
    const/16 v28, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Ltmsdkobf/ht;->a(Ltmsdkobf/fx;I)Ltmsdk/common/module/permission/PermissionRequestInfo;

    move-result-object v12

    .line 74
    sget-object v28, Ltmsdkobf/gd$c;->DESCRIPTOR:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 78
    .local v18, pkg:Ljava/lang/String;
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v28

    const/16 v29, 0x12

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_3

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, basePkg:Ljava/lang/String;
    :goto_0
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 80
    .local v22, tag:Ljava/lang/String;
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 81
    .local v11, id:I
    const/4 v4, 0x0

    .line 82
    .local v4, alltext:Ljava/lang/String;
    const/16 v24, 0x0

    .line 83
    .local v24, tickerText:Ljava/lang/String;
    const/16 v26, 0x0

    .line 84
    .local v26, url:Ljava/lang/String;
    const/4 v15, 0x0

    .line 85
    .local v15, nflags:I
    const/16 v17, -0x1

    .line 86
    .local v17, number:I
    const/16 v16, 0x0

    .line 88
    .local v16, notification:Landroid/app/Notification;
    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_0

    .line 89
    sget-object v28, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #notification:Landroid/app/Notification;
    check-cast v16, Landroid/app/Notification;

    .line 92
    .restart local v16       #notification:Landroid/app/Notification;
    :cond_0
    if-eqz v16, :cond_7

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v28, v0

    if-eqz v28, :cond_7

    .line 93
    new-instance v23, Ltmsdkobf/ht$a;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v28, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ht$a;-><init>(Ltmsdkobf/ht;Landroid/widget/RemoteViews;Ljava/lang/String;)V

    .line 95
    .local v23, task:Ltmsdkobf/ht$a;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v28

    if-eqz v28, :cond_4

    .line 96
    invoke-virtual/range {v23 .. v23}, Ltmsdkobf/ht$a;->run()V

    .line 101
    :goto_1
    invoke-virtual/range {v23 .. v23}, Ltmsdkobf/ht$a;->getView()Landroid/view/View;

    move-result-object v27

    .line 102
    .local v27, view:Landroid/view/View;
    if-eqz v27, :cond_1

    .line 103
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v21, stringbuilder:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ltmsdkobf/ht;->a(Landroid/view/View;Ljava/lang/StringBuilder;)V

    .line 105
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 108
    .end local v21           #stringbuilder:Ljava/lang/StringBuilder;
    :cond_1
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    if-eqz v28, :cond_5

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    .line 109
    :goto_2
    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/Notification;->number:I

    move/from16 v17, v0

    .line 110
    move-object/from16 v0, v16

    iget v15, v0, Landroid/app/Notification;->flags:I

    .line 112
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v28, v0

    if-eqz v28, :cond_7

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v28

    if-eqz v28, :cond_7

    .line 113
    new-instance v19, Ltmsdkobf/hs;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ltmsdkobf/hs;-><init>(Landroid/content/IntentSender;)V

    .line 114
    .local v19, pr:Ltmsdkobf/hs;
    invoke-virtual/range {v19 .. v19}, Ltmsdkobf/hs;->cn()[Landroid/content/Intent;

    move-result-object v13

    .line 116
    .local v13, intents:[Landroid/content/Intent;
    if-eqz v13, :cond_7

    .line 117
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v20, sb:Ljava/lang/StringBuilder;
    move-object v5, v13

    .local v5, arr$:[Landroid/content/Intent;
    array-length v14, v5

    .local v14, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_3
    if-ge v10, v14, :cond_6

    aget-object v9, v5, v10

    .line 120
    .local v9, i:Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v25

    .line 122
    .local v25, uri:Landroid/net/Uri;
    const-string v28, "android.intent.action.VIEW"

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    if-eqz v25, :cond_2

    .line 123
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 78
    .end local v4           #alltext:Ljava/lang/String;
    .end local v5           #arr$:[Landroid/content/Intent;
    .end local v6           #basePkg:Ljava/lang/String;
    .end local v9           #i:Landroid/content/Intent;
    .end local v10           #i$:I
    .end local v11           #id:I
    .end local v13           #intents:[Landroid/content/Intent;
    .end local v14           #len$:I
    .end local v15           #nflags:I
    .end local v16           #notification:Landroid/app/Notification;
    .end local v17           #number:I
    .end local v19           #pr:Ltmsdkobf/hs;
    .end local v20           #sb:Ljava/lang/StringBuilder;
    .end local v22           #tag:Ljava/lang/String;
    .end local v23           #task:Ltmsdkobf/ht$a;
    .end local v24           #tickerText:Ljava/lang/String;
    .end local v25           #uri:Landroid/net/Uri;
    .end local v26           #url:Ljava/lang/String;
    .end local v27           #view:Landroid/view/View;
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 98
    .restart local v4       #alltext:Ljava/lang/String;
    .restart local v6       #basePkg:Ljava/lang/String;
    .restart local v11       #id:I
    .restart local v15       #nflags:I
    .restart local v16       #notification:Landroid/app/Notification;
    .restart local v17       #number:I
    .restart local v22       #tag:Ljava/lang/String;
    .restart local v23       #task:Ltmsdkobf/ht$a;
    .restart local v24       #tickerText:Ljava/lang/String;
    .restart local v26       #url:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdkobf/ht;->qr:Ltmsdkobf/ht$b;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ltmsdkobf/ht$b;->b(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 108
    .restart local v27       #view:Landroid/view/View;
    :cond_5
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 127
    .restart local v5       #arr$:[Landroid/content/Intent;
    .restart local v10       #i$:I
    .restart local v13       #intents:[Landroid/content/Intent;
    .restart local v14       #len$:I
    .restart local v19       #pr:Ltmsdkobf/hs;
    .restart local v20       #sb:Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 135
    .end local v5           #arr$:[Landroid/content/Intent;
    .end local v10           #i$:I
    .end local v13           #intents:[Landroid/content/Intent;
    .end local v14           #len$:I
    .end local v19           #pr:Ltmsdkobf/hs;
    .end local v20           #sb:Ljava/lang/StringBuilder;
    .end local v23           #task:Ltmsdkobf/ht$a;
    .end local v27           #view:Landroid/view/View;
    :cond_7
    const/16 v28, 0x5

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v18, v28, v29

    const/16 v29, 0x1

    aput-object v22, v28, v29

    const/16 v29, 0x2

    aput-object v4, v28, v29

    const/16 v29, 0x3

    aput-object v24, v28, v29

    const/16 v29, 0x4

    aput-object v26, v28, v29

    move-object/from16 v0, v28

    iput-object v0, v12, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    .line 136
    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput v11, v28, v29

    const/16 v29, 0x1

    aput v17, v28, v29

    const/16 v29, 0x2

    aput v15, v28, v29

    move-object/from16 v0, v28

    iput-object v0, v12, Ltmsdk/common/module/permission/PermissionRequestInfo;->mInfo2:[I

    .line 139
    .end local v4           #alltext:Ljava/lang/String;
    .end local v6           #basePkg:Ljava/lang/String;
    .end local v11           #id:I
    .end local v15           #nflags:I
    .end local v16           #notification:Landroid/app/Notification;
    .end local v17           #number:I
    .end local v18           #pkg:Ljava/lang/String;
    .end local v22           #tag:Ljava/lang/String;
    .end local v24           #tickerText:Ljava/lang/String;
    .end local v26           #url:Ljava/lang/String;
    :cond_8
    return-object v12
.end method

.method protected c(Ltmsdkobf/fx;Ltmsdkobf/fx;)I
    .locals 1
    .parameter "inContext"
    .parameter "outContext"

    .prologue
    .line 45
    const/4 v0, 0x2

    return v0
.end method

.method protected g(Ltmsdkobf/fx;Ltmsdkobf/fx;)I
    .locals 5
    .parameter "inContext"
    .parameter "outContext"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    iget v0, p1, Ltmsdkobf/fx;->mCode:I

    .line 52
    .local v0, code:I
    iget-object v1, p2, Ltmsdkobf/fx;->mr:Landroid/os/Parcel;

    .line 53
    .local v1, reply:Landroid/os/Parcel;
    sget v2, Ltmsdkobf/gd$c;->mE:I

    if-ne v0, v2, :cond_0

    .line 54
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    new-array v2, v4, [I

    aput v3, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 58
    :cond_0
    return v4
.end method
