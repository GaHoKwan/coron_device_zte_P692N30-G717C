.class Lcom/mediatek/contacts/activities/SpeedDialManageActivity$InputKeyListener;
.super Landroid/text/method/DialerKeyListener;
.source "SpeedDialManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/activities/SpeedDialManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputKeyListener"
.end annotation


# static fields
.field public static final CHARACTERS:[C

.field private static sKeyListener:Lcom/mediatek/contacts/activities/SpeedDialManageActivity$InputKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1391
    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$InputKeyListener;->CHARACTERS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2at 0x0t
        0x23t 0x0t
        0x50t 0x0t
        0x57t 0x0t
        0x70t 0x0t
        0x77t 0x0t
        0x2ct 0x0t
        0x3bt 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1389
    invoke-direct {p0}, Landroid/text/method/DialerKeyListener;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mediatek/contacts/activities/SpeedDialManageActivity$InputKeyListener;
    .locals 1

    .prologue
    .line 1399
    sget-object v0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$InputKeyListener;->sKeyListener:Lcom/mediatek/contacts/activities/SpeedDialManageActivity$InputKeyListener;

    if-nez v0, :cond_0

    .line 1400
    new-instance v0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$InputKeyListener;

    invoke-direct {v0}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$InputKeyListener;-><init>()V

    sput-object v0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$InputKeyListener;->sKeyListener:Lcom/mediatek/contacts/activities/SpeedDialManageActivity$InputKeyListener;

    .line 1402
    :cond_0
    sget-object v0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$InputKeyListener;->sKeyListener:Lcom/mediatek/contacts/activities/SpeedDialManageActivity$InputKeyListener;

    return-object v0
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 1396
    sget-object v0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$InputKeyListener;->CHARACTERS:[C

    return-object v0
.end method