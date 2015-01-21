.class public Lcom/zte/heartyservice/power/Utils$TimeAmount;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeAmount"
.end annotation


# instance fields
.field days:I

.field hours:I

.field minutes:I

.field seconds:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v0, p0, Lcom/zte/heartyservice/power/Utils$TimeAmount;->seconds:I

    .line 64
    iput v0, p0, Lcom/zte/heartyservice/power/Utils$TimeAmount;->days:I

    .line 65
    iput v0, p0, Lcom/zte/heartyservice/power/Utils$TimeAmount;->hours:I

    .line 66
    iput v0, p0, Lcom/zte/heartyservice/power/Utils$TimeAmount;->minutes:I

    return-void
.end method
