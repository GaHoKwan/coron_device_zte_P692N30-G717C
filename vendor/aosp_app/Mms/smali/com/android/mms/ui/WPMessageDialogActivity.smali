.class public Lcom/android/mms/ui/WPMessageDialogActivity;
.super Landroid/app/Activity;
.source "WPMessageDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WPMessageDialogActivity"


# instance fields
.field private mDialog:Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;

.field private mUri:Landroid/net/Uri;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageDialogActivity;->mDialog:Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/WPMessageDialogActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageDialogActivity;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/WPMessageDialogActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageDialogActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/WPMessageDialogActivity;Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;)Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageDialogActivity;->mDialog:Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/WPMessageDialogActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/mms/ui/WPMessageDialogActivity;->markAsRead()V

    return-void
.end method

.method private getWPMessageDetails(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 24
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 133
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v9, details:Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 136
    .local v14, res:Landroid/content/res/Resources;
    const-string v20, "address"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 137
    .local v15, senderAddress:Ljava/lang/String;
    const-string v20, "service_center"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, centerAddress:Ljava/lang/String;
    const-string v20, "sim_id"

    const/16 v21, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 139
    .local v17, simId:I
    const-string v20, "url"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/WPMessageDialogActivity;->mUrl:Ljava/lang/String;

    .line 140
    const-string v20, "siid"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 141
    .local v16, siid:Ljava/lang/String;
    const-string v20, "action"

    const/16 v21, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 142
    .local v4, action:I
    const-string v20, "created"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 143
    .local v6, create:I
    const-string v20, "expiration"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 144
    .local v10, expiration:I
    const-string v20, "text"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 145
    .local v18, text:Ljava/lang/String;
    const-string v20, "date"

    const-wide/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 146
    .local v7, date:J
    const-string v20, "uri"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/WPMessageDialogActivity;->mUri:Landroid/net/Uri;

    .line 151
    const v20, 0x7f0b0021

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    move v13, v4

    .line 153
    .local v13, priority:I
    const/16 v19, 0x0

    .line 154
    .local v19, type:I
    if-nez v19, :cond_3

    .line 155
    packed-switch v13, :pswitch_data_0

    .line 172
    const-string v20, "WPMessageDialogActivity"

    const-string v21, "getWPMessageDetails si priority error."

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_0
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    const v20, 0x7f0b02c6

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    const v20, 0x7f0b02ca

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v7, v8, v1}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    mul-int/lit16 v0, v10, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v11, v0

    .line 204
    .local v11, expiredDate:J
    const-wide/16 v20, 0x0

    cmp-long v20, v11, v20

    if-eqz v20, :cond_0

    .line 205
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    const v20, 0x7f0b0027

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v11, v12, v1}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/WPMessageDialogActivity;->mUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/WPMessageDialogActivity;->mUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 212
    const-string v20, "\n\n"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const v20, 0x7f0b00c1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/WPMessageDialogActivity;->mUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_1
    if-eqz v18, :cond_2

    const-string v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 219
    const-string v20, "\n\n"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    return-object v20

    .line 157
    .end local v11           #expiredDate:J
    :pswitch_0
    const-string v20, "WPMessageDialogActivity"

    const-string v21, "action error, none"

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :pswitch_1
    const v20, 0x7f0b0022

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 163
    :pswitch_2
    const v20, 0x7f0b0023

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 166
    :pswitch_3
    const v20, 0x7f0b0024

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 169
    :pswitch_4
    const-string v20, "WPMessageDialogActivity"

    const-string v21, "action error, delete"

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :cond_3
    const/16 v20, 0x1

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 175
    packed-switch v13, :pswitch_data_1

    .line 186
    const-string v20, "WPMessageDialogActivity"

    const-string v21, "getWPMessageDetails sl priority error."

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :pswitch_5
    const v20, 0x7f0b0022

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 180
    :pswitch_6
    const v20, 0x7f0b0024

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 183
    :pswitch_7
    const v20, 0x7f0b0022

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 189
    :cond_4
    const-string v20, "WPMessageDialogActivity"

    const-string v21, "getWPMessageDetails type error."

    invoke-static/range {v20 .. v21}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 175
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private initDialog()V
    .locals 6

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 85
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, p0, v1}, Lcom/android/mms/ui/WPMessageDialogActivity;->getWPMessageDetails(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, messageDetails:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageDialogActivity;->mDialog:Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;

    if-eqz v3, :cond_0

    .line 88
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageDialogActivity;->mDialog:Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;->dismiss(I)V

    .line 89
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/ui/WPMessageDialogActivity;->mDialog:Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;

    .line 93
    :cond_0
    new-instance v0, Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;

    const/4 v3, 0x3

    invoke-direct {v0, p0, p0, v3}, Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;-><init>(Lcom/android/mms/ui/WPMessageDialogActivity;Landroid/content/Context;I)V

    .line 94
    .local v0, b:Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;
    const v3, 0x7f0b01e9

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setTitle(I)V

    .line 95
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 96
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 98
    const/4 v3, -0x2

    const/high16 v4, 0x104

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/mms/ui/WPMessageDialogActivity$1;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/WPMessageDialogActivity$1;-><init>(Lcom/android/mms/ui/WPMessageDialogActivity;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 106
    const/4 v3, -0x1

    const v4, 0x7f0b01ea

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/mms/ui/WPMessageDialogActivity$2;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/WPMessageDialogActivity$2;-><init>(Lcom/android/mms/ui/WPMessageDialogActivity;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 128
    iput-object v0, p0, Lcom/android/mms/ui/WPMessageDialogActivity;->mDialog:Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;

    .line 129
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageDialogActivity;->mDialog:Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 130
    return-void
.end method

.method private markAsRead()V
    .locals 2

    .prologue
    .line 227
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/WPMessageDialogActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/WPMessageDialogActivity$3;-><init>(Lcom/android/mms/ui/WPMessageDialogActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 240
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0201a4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 64
    invoke-direct {p0}, Lcom/android/mms/ui/WPMessageDialogActivity;->initDialog()V

    .line 65
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageDialogActivity;->mDialog:Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageDialogActivity;->mDialog:Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;->dismiss(I)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageDialogActivity;->mDialog:Lcom/android/mms/ui/WPMessageDialogActivity$WPMessageDialog;

    .line 81
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 70
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 71
    invoke-direct {p0}, Lcom/android/mms/ui/WPMessageDialogActivity;->initDialog()V

    .line 72
    return-void
.end method
