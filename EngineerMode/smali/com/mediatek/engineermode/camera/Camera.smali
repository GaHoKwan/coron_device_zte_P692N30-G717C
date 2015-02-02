.class public Lcom/mediatek/engineermode/camera/Camera;
.super Landroid/app/Activity;
.source "Camera.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final AF_MODE:Ljava/lang/String; = "AFMode"

.field private static final AF_STEP:Ljava/lang/String; = "AFStep"

.field private static final ANTI_FLICKER:Ljava/lang/String; = "AntiFlicker"

.field private static final AUTO_STR:Ljava/lang/String; = "0"

.field private static final CAMERA_PERFER_KEY:Ljava/lang/String; = "camera_settings"

.field private static final DIALOG_AF:I = 0x1

.field private static final DIALOG_ANTI_FLICKER:I = 0x4

.field private static final DIALOG_ISO:I = 0x6

.field private static final DIALOG_RAW_CAPTURE_MODE:I = 0x2

.field private static final DIALOG_RAW_CAPTURE_TYPE:I = 0x3

.field private static final DIALOG_SET_STEP:I = 0x5

.field private static final ISO_STR:Ljava/lang/String; = "ISO"

.field private static final ITEM_FLICKER:I = 0x3

.field private static final ITEM_HELP:I = 0x6

.field private static final ITEM_ISO:I = 0x4

.field private static final ITEM_START_PREVIEW:I = 0x5

.field private static final RAW_CAPTURE_MODE:Ljava/lang/String; = "RawCaptureMode"

.field private static final RAW_TYPE:Ljava/lang/String; = "RawType"

.field private static final TAG:Ljava/lang/String; = "EM/Camera"


# instance fields
.field private mAntiFlicker:Ljava/lang/String;

.field private mISO:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mMode:I

.field private mRawCaptureMode:I

.field private mRawCaptureType:I

.field private mStep:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    iput v0, p0, Lcom/mediatek/engineermode/camera/Camera;->mMode:I

    .line 87
    iput v1, p0, Lcom/mediatek/engineermode/camera/Camera;->mRawCaptureMode:I

    .line 88
    iput v0, p0, Lcom/mediatek/engineermode/camera/Camera;->mRawCaptureType:I

    .line 89
    const-string v0, "50"

    iput-object v0, p0, Lcom/mediatek/engineermode/camera/Camera;->mAntiFlicker:Ljava/lang/String;

    .line 90
    const-string v0, "0"

    iput-object v0, p0, Lcom/mediatek/engineermode/camera/Camera;->mISO:Ljava/lang/String;

    .line 91
    iput v1, p0, Lcom/mediatek/engineermode/camera/Camera;->mStep:I

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/mediatek/engineermode/camera/Camera;->mStep:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/mediatek/engineermode/camera/Camera;->mStep:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/mediatek/engineermode/camera/Camera;->mMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/mediatek/engineermode/camera/Camera;->mMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/mediatek/engineermode/camera/Camera;->mRawCaptureMode:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/engineermode/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/mediatek/engineermode/camera/Camera;->mRawCaptureMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/mediatek/engineermode/camera/Camera;->mRawCaptureType:I

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/engineermode/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/mediatek/engineermode/camera/Camera;->mRawCaptureType:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/Camera;->mAntiFlicker:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/engineermode/camera/Camera;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/Camera;->mAntiFlicker:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/engineermode/camera/Camera;->mISO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/engineermode/camera/Camera;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mediatek/engineermode/camera/Camera;->mISO:Ljava/lang/String;

    return-object p1
.end method

.method private setPreferencesTodefault()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 197
    const-string v2, "EM/Camera"

    const-string v3, "Camera->setPreferencesTodefault()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v2, "camera_settings"

    invoke-virtual {p0, v2, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 201
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 202
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "AFStep"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 203
    const-string v2, "AFMode"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 204
    const-string v2, "RawCaptureMode"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 205
    const-string v2, "RawType"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 206
    const-string v2, "AntiFlicker"

    const-string v3, "50"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 207
    const-string v2, "ISO"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const-string v2, "EM/Camera"

    const-string v3, "Camera->onCreate()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const v2, 0x7f03001b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 102
    const v2, 0x7f0b00c6

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 104
    .local v1, camereListView:Landroid/widget/ListView;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 108
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    invoke-direct {p0}, Lcom/mediatek/engineermode/camera/Camera;->setPreferencesTodefault()V

    .line 111
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .parameter "id"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x1

    const v9, 0x104000a

    const/4 v8, 0x0

    .line 215
    const-string v6, "camera_settings"

    invoke-virtual {p0, v6, v8}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 218
    .local v4, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 219
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    packed-switch p1, :pswitch_data_0

    .line 378
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 221
    :pswitch_0
    new-array v5, v11, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v5, v8

    const-string v6, "2"

    aput-object v6, v5, v7

    const-string v6, "4"

    aput-object v6, v5, v10

    .line 222
    .local v5, setStepItems:[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0801c5

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 224
    new-instance v6, Lcom/mediatek/engineermode/camera/Camera$1;

    invoke-direct {v6, p0}, Lcom/mediatek/engineermode/camera/Camera$1;-><init>(Lcom/mediatek/engineermode/camera/Camera;)V

    invoke-virtual {v1, v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 230
    new-instance v6, Lcom/mediatek/engineermode/camera/Camera$2;

    invoke-direct {v6, p0, v2}, Lcom/mediatek/engineermode/camera/Camera$2;-><init>(Lcom/mediatek/engineermode/camera/Camera;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v1, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 239
    .local v0, alertDlg:Landroid/app/AlertDialog;
    goto :goto_0

    .line 241
    .end local v0           #alertDlg:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v5           #setStepItems:[Ljava/lang/String;
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 242
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0801c4

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 243
    const v6, 0x7f060034

    new-instance v7, Lcom/mediatek/engineermode/camera/Camera$3;

    invoke-direct {v7, p0}, Lcom/mediatek/engineermode/camera/Camera$3;-><init>(Lcom/mediatek/engineermode/camera/Camera;)V

    invoke-virtual {v1, v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 253
    new-instance v6, Lcom/mediatek/engineermode/camera/Camera$4;

    invoke-direct {v6, p0, v2}, Lcom/mediatek/engineermode/camera/Camera$4;-><init>(Lcom/mediatek/engineermode/camera/Camera;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v1, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 271
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 272
    .restart local v0       #alertDlg:Landroid/app/AlertDialog;
    goto :goto_0

    .line 275
    .end local v0           #alertDlg:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 276
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0801c6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 277
    const v6, 0x7f060035

    new-instance v7, Lcom/mediatek/engineermode/camera/Camera$5;

    invoke-direct {v7, p0}, Lcom/mediatek/engineermode/camera/Camera$5;-><init>(Lcom/mediatek/engineermode/camera/Camera;)V

    invoke-virtual {v1, v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 286
    new-instance v6, Lcom/mediatek/engineermode/camera/Camera$6;

    invoke-direct {v6, p0, v2}, Lcom/mediatek/engineermode/camera/Camera$6;-><init>(Lcom/mediatek/engineermode/camera/Camera;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v1, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 294
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 295
    .restart local v0       #alertDlg:Landroid/app/AlertDialog;
    goto :goto_0

    .line 297
    .end local v0           #alertDlg:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 298
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0801c7

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 299
    const v6, 0x7f060036

    new-instance v7, Lcom/mediatek/engineermode/camera/Camera$7;

    invoke-direct {v7, p0}, Lcom/mediatek/engineermode/camera/Camera$7;-><init>(Lcom/mediatek/engineermode/camera/Camera;)V

    invoke-virtual {v1, v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 308
    new-instance v6, Lcom/mediatek/engineermode/camera/Camera$8;

    invoke-direct {v6, p0, v2}, Lcom/mediatek/engineermode/camera/Camera$8;-><init>(Lcom/mediatek/engineermode/camera/Camera;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v1, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 316
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 317
    .restart local v0       #alertDlg:Landroid/app/AlertDialog;
    goto/16 :goto_0

    .line 319
    .end local v0           #alertDlg:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 320
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0801c8

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 321
    const v6, 0x7f060037

    new-instance v7, Lcom/mediatek/engineermode/camera/Camera$9;

    invoke-direct {v7, p0}, Lcom/mediatek/engineermode/camera/Camera$9;-><init>(Lcom/mediatek/engineermode/camera/Camera;)V

    invoke-virtual {v1, v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 332
    new-instance v6, Lcom/mediatek/engineermode/camera/Camera$10;

    invoke-direct {v6, p0, v2}, Lcom/mediatek/engineermode/camera/Camera$10;-><init>(Lcom/mediatek/engineermode/camera/Camera;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v1, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 341
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 342
    .restart local v0       #alertDlg:Landroid/app/AlertDialog;
    goto/16 :goto_0

    .line 344
    .end local v0           #alertDlg:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_5
    const/16 v6, 0x9

    new-array v3, v6, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v3, v8

    const-string v6, "100"

    aput-object v6, v3, v7

    const-string v6, "150"

    aput-object v6, v3, v10

    const-string v6, "200"

    aput-object v6, v3, v11

    const/4 v6, 0x4

    const-string v7, "300"

    aput-object v7, v3, v6

    const/4 v6, 0x5

    const-string v7, "400"

    aput-object v7, v3, v6

    const/4 v6, 0x6

    const-string v7, "600"

    aput-object v7, v3, v6

    const/4 v6, 0x7

    const-string v7, "800"

    aput-object v7, v3, v6

    const/16 v6, 0x8

    const-string v7, "1600"

    aput-object v7, v3, v6

    .line 347
    .local v3, isoItemsValue:[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 348
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0801c9

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 349
    const v6, 0x7f060038

    new-instance v7, Lcom/mediatek/engineermode/camera/Camera$11;

    invoke-direct {v7, p0, v3}, Lcom/mediatek/engineermode/camera/Camera$11;-><init>(Lcom/mediatek/engineermode/camera/Camera;[Ljava/lang/String;)V

    invoke-virtual {v1, v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 366
    new-instance v6, Lcom/mediatek/engineermode/camera/Camera$12;

    invoke-direct {v6, p0, v2}, Lcom/mediatek/engineermode/camera/Camera$12;-><init>(Lcom/mediatek/engineermode/camera/Camera;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v1, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 374
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 375
    .restart local v0       #alertDlg:Landroid/app/AlertDialog;
    goto/16 :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "arg1"
    .parameter "arg2"
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 126
    packed-switch p3, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 128
    :pswitch_0
    invoke-virtual {p0, v7}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 131
    :pswitch_1
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 134
    :pswitch_2
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 137
    :pswitch_3
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 140
    :pswitch_4
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 143
    :pswitch_5
    const-string v2, "EM/Camera"

    const-string v3, "before start CameraPreview"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    if-nez v2, :cond_0

    .line 145
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    const-class v3, Lcom/mediatek/engineermode/camera/CameraPreview;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 148
    const-string v2, "camera_settings"

    invoke-virtual {p0, v2, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 152
    .local v1, preferences:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    const-string v3, "AFMode"

    const-string v4, "AFMode"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    const-string v2, "EM/Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AFMode has been set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    const-string v5, "AFMode"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    const-string v3, "AFStep"

    const-string v4, "AFStep"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    const-string v2, "EM/Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AFStep has been set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    const-string v5, "AFStep"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    const-string v3, "RawCaptureMode"

    const-string v4, "RawCaptureMode"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    const-string v2, "EM/Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RawCaptureMode has been set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    const-string v5, "RawCaptureMode"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    const-string v3, "RawType"

    const-string v4, "RawType"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    const-string v2, "EM/Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RawType has been set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    const-string v5, "RawType"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    const-string v3, "AntiFlicker"

    const-string v4, "AntiFlicker"

    const-string v5, "50"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v2, "EM/Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AntiFlicker has been set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    const-string v5, "AntiFlicker"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    const-string v3, "ISO"

    const-string v4, "ISO"

    const-string v5, "0"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v2, "EM/Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISO has been set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    const-string v5, "ISO"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 174
    const-string v2, "EM/Camera"

    const-string v3, "after start CameraPreview "

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 178
    .end local v1           #preferences:Landroid/content/SharedPreferences;
    :pswitch_6
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    if-nez v2, :cond_1

    .line 179
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    const-class v3, Lcom/mediatek/engineermode/FeatureHelpPage;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 182
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    const-string v3, "helpTitle"

    const v4, 0x7f08047a

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    const-string v3, "helpMessage"

    const v4, 0x7f0801cc

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/engineermode/camera/Camera;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "EM/Camera"

    const-string v3, "Start activity FeatureHelpPage error"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
