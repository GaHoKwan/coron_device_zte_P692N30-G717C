.class public Lcom/mediatek/contacts/plugin/calllog/CallLogSimInfoHelperOP09Extension;
.super Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;
.source "CallLogSimInfoHelperOP09Extension.java"


# static fields
.field public static final CALL_TYPE_SIP:I = -0x2

.field private static final TAG:Ljava/lang/String; = "CallLogSimInfoHelperOP09Extension"


# instance fields
.field private mOP09ContactsPlugin:Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;

.field private mPluginContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;)V
    .locals 0
    .parameter "pluginContext"
    .parameter "op09ContactsPlugin"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/calllog/CallLogSimInfoHelperOP09Extension;->mPluginContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/mediatek/contacts/plugin/calllog/CallLogSimInfoHelperOP09Extension;->mOP09ContactsPlugin:Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;

    .line 27
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 72
    const-string v0, "CallLogSimInfoHelperOP09Extension"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method


# virtual methods
.method public getSimBackgroundDarkResByColorId(I[I)Z
    .locals 2
    .parameter "colorId"
    .parameter "simBackgroundDarkRes"

    .prologue
    .line 64
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 65
    :cond_0
    const/4 p1, 0x0

    .line 67
    :cond_1
    const/4 v0, 0x0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkSmallRes:[I

    aget v1, v1, p1

    aput v1, p2, v0

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public getSimColorDrawableById(ILandroid/graphics/drawable/Drawable;)Z
    .locals 3
    .parameter "simId"
    .parameter "drawableSimColor"

    .prologue
    .line 47
    const/4 v1, -0x2

    if-ne v1, p1, :cond_2

    .line 49
    if-nez p2, :cond_0

    .line 50
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallLogSimInfoHelperOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 51
    .local v0, dw:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 52
    move-object p2, v0

    .line 60
    .end local v0           #dw:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 54
    .restart local v0       #dw:Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 58
    .end local v0           #dw:Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSimDisplayNameById(ILjava/lang/StringBuffer;)Z
    .locals 1
    .parameter "simId"
    .parameter "callDisplayName"

    .prologue
    .line 36
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    const/4 v0, 0x1

    return v0
.end method
