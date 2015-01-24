.class public final Lcn/edu/ncwu/www/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/ncwu/www/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final IconPreferenceScreen:[I = null

.field public static final IconPreferenceScreen_QQqun:I = 0x6

.field public static final IconPreferenceScreen_action:I = 0x1

.field public static final IconPreferenceScreen_category:I = 0x3

.field public static final IconPreferenceScreen_connection:I = 0x4

.field public static final IconPreferenceScreen_icon:I = 0x0

.field public static final IconPreferenceScreen_toasttext:I = 0x5

.field public static final IconPreferenceScreen_uriconnection:I = 0x2

.field public static final MCheckBoxPreference:[I

.field public static final MCheckBoxPreference_resloverkey:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 166
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/edu/ncwu/www/R$styleable;->IconPreferenceScreen:[I

    .line 274
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 275
    const v2, 0x7f010007

    aput v2, v0, v1

    .line 274
    sput-object v0, Lcn/edu/ncwu/www/R$styleable;->MCheckBoxPreference:[I

    .line 290
    return-void

    .line 166
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
