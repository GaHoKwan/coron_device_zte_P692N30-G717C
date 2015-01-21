.class public Ltmsdk/common/tcc/RuleFileHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public md5str:Ljava/lang/String;

.field public time:I

.field public version:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .parameter "version"
    .parameter "time"
    .parameter "md5str"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Ltmsdk/common/tcc/RuleFileHeader;->version:I

    .line 11
    iput p2, p0, Ltmsdk/common/tcc/RuleFileHeader;->time:I

    .line 12
    iput-object p3, p0, Ltmsdk/common/tcc/RuleFileHeader;->md5str:Ljava/lang/String;

    .line 13
    return-void
.end method
