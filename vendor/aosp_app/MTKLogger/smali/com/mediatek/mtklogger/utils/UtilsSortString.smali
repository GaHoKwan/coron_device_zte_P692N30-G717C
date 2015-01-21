.class public Lcom/mediatek/mtklogger/utils/UtilsSortString;
.super Ljava/lang/Object;
.source "UtilsSortString.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final DOWM:I = -0x1

.field public static final UP:I = 0x1


# instance fields
.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/mediatek/mtklogger/utils/UtilsSortString;->state:I

    .line 56
    return-void
.end method

.method private sortDown(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 80
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 81
    const/4 v0, -0x1

    .line 85
    :goto_0
    return v0

    .line 82
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 83
    const/4 v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sortUp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 71
    const/4 v0, -0x1

    .line 75
    :goto_0
    return v0

    .line 72
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 73
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/mtklogger/utils/UtilsSortString;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 63
    iget v0, p0, Lcom/mediatek/mtklogger/utils/UtilsSortString;->state:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mtklogger/utils/UtilsSortString;->sortDown(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 66
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mtklogger/utils/UtilsSortString;->sortUp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
