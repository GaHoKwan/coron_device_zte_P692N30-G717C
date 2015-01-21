.class public Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/tcc/TrafficSmsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatchRule"
.end annotation


# instance fields
.field public postfix:Ljava/lang/String;

.field public prefix:Ljava/lang/String;

.field public type:I

.field public unit:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "unit"
    .parameter "type"
    .parameter "prefix"
    .parameter "postfix"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;->unit:I

    .line 39
    iput p2, p0, Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;->type:I

    .line 40
    iput-object p3, p0, Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;->prefix:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Ltmsdk/common/tcc/TrafficSmsParser$MatchRule;->postfix:Ljava/lang/String;

    .line 42
    return-void
.end method
