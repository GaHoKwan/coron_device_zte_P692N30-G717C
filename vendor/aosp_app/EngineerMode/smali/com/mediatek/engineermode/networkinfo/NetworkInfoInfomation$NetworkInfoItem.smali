.class Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;
.super Ljava/lang/Object;
.source "NetworkInfoInfomation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkInfoItem"
.end annotation


# instance fields
.field public info:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public size:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "size"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;->name:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;->info:Ljava/lang/String;

    .line 97
    iput p2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;->size:I

    .line 98
    return-void
.end method
