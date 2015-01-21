.class public Lcom/mediatek/security/ui/UiUtils;
.super Ljava/lang/Object;
.source "UiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/security/ui/UiUtils$SwitchContentObserver;
    }
.end annotation


# static fields
.field public static final PERM_STATUS_ARRAY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/security/ui/UiUtils;->PERM_STATUS_ARRAY:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static getSelectIndex(I)I
    .locals 3
    .parameter "status"

    .prologue
    .line 39
    const/4 v1, 0x1

    .line 40
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/mediatek/security/ui/UiUtils;->PERM_STATUS_ARRAY:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 41
    sget-object v2, Lcom/mediatek/security/ui/UiUtils;->PERM_STATUS_ARRAY:[I

    aget v2, v2, v0

    if-ne v2, p0, :cond_1

    .line 42
    move v1, v0

    .line 46
    :cond_0
    return v1

    .line 40
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
