.class public Lxp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lxq;

.field public static b:Lxq;

.field public static c:Lxq;

.field public static d:Lxq;

.field public static e:Lxq;

.field public static f:Lxq;

.field public static g:Lxq;

.field public static h:Lxq;

.field public static i:Lxq;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 39
    new-instance v0, Lxq;

    const-string v1, "com.sohu.inputmethod.sogou"

    const-string v2, "openplatform_audio"

    const-string v3, "platform_voice"

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lxq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZI)V

    sput-object v0, Lxp;->a:Lxq;

    .line 40
    new-instance v0, Lxq;

    const-string v1, "com.sohu.inputmethod.sogou"

    const-string v2, "openplatform_image"

    const-string v3, "platform_transfer_pic"

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lxq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZI)V

    sput-object v0, Lxp;->b:Lxq;

    .line 41
    new-instance v0, Lxq;

    const-string v1, "com.sohu.inputmethod.sogou"

    const-string v2, "openplatform_photo"

    const-string v3, "platform_camera"

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lxq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZI)V

    sput-object v0, Lxp;->c:Lxq;

    .line 42
    new-instance v0, Lxq;

    const-string v1, "com.sohu.inputmethod.sogou"

    const-string v2, "openplatform_qrcode"

    const-string v3, "platform_dimcode"

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lxq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZI)V

    sput-object v0, Lxp;->d:Lxq;

    .line 43
    new-instance v0, Lxq;

    const-string v1, "com.sohu.inputmethod.sogou"

    const-string v2, "openplatform_barcode"

    const-string v3, "platform_barcode"

    const/4 v6, 0x5

    invoke-direct/range {v0 .. v6}, Lxq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZI)V

    sput-object v0, Lxp;->e:Lxq;

    .line 44
    new-instance v0, Lxq;

    const-string v1, "com.sohu.inputmethod.sogou"

    const-string v2, "openplatform_theme"

    const-string v3, "platform_theme"

    const/4 v6, 0x6

    invoke-direct/range {v0 .. v6}, Lxq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZI)V

    sput-object v0, Lxp;->f:Lxq;

    .line 45
    new-instance v0, Lxq;

    const-string v1, "com.sohu.inputmethod.sogou"

    const-string v2, "openplatform_hotdict"

    const-string v3, "platform_hotdict"

    const/4 v6, 0x7

    invoke-direct/range {v0 .. v6}, Lxq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZI)V

    sput-object v0, Lxp;->g:Lxq;

    .line 46
    new-instance v0, Lxq;

    const-string v1, "com.sohu.inputmethod.sogou"

    const-string v2, "openplatform_celldict"

    const-string v3, "platform_celldict"

    const/16 v6, 0x8

    invoke-direct/range {v0 .. v6}, Lxq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZI)V

    sput-object v0, Lxp;->h:Lxq;

    .line 47
    new-instance v0, Lxq;

    const-string v1, "com.sohu.inputmethod.sogou"

    const-string v2, "openplatform_add"

    const-string v3, "platform_add_selector"

    const/16 v6, 0x9

    invoke-direct/range {v0 .. v6}, Lxq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZI)V

    sput-object v0, Lxp;->i:Lxq;

    return-void
.end method
