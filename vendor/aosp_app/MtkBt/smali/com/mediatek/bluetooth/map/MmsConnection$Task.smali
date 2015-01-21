.class Lcom/mediatek/bluetooth/map/MmsConnection$Task;
.super Ljava/lang/Object;
.source "MmsConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/MmsConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation


# instance fields
.field public mPdu:[B

.field public mToken:J

.field final synthetic this$0:Lcom/mediatek/bluetooth/map/MmsConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/bluetooth/map/MmsConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/MmsConnection$Task;->this$0:Lcom/mediatek/bluetooth/map/MmsConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/bluetooth/map/MmsConnection;Lcom/mediatek/bluetooth/map/MmsConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/mediatek/bluetooth/map/MmsConnection$Task;-><init>(Lcom/mediatek/bluetooth/map/MmsConnection;)V

    return-void
.end method
