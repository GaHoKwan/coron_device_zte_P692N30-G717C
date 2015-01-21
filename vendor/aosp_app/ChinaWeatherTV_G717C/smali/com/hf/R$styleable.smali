.class public final Lcom/hf/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final com_baidu_mobads_AdView:[I

.field public static final com_baidu_mobads_AdView_adSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1524
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1525
    const/high16 v2, 0x7f01

    aput v2, v0, v1

    .line 1524
    sput-object v0, Lcom/hf/R$styleable;->com_baidu_mobads_AdView:[I

    .line 1540
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
