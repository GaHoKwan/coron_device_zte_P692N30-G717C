.class public final Ltmsdk/common/module/optimize/IAutoBootHelper$Pair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/optimize/IAutoBootHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT1;"
        }
    .end annotation
.end field

.field public second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT2;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, this:Ltmsdk/common/module/optimize/IAutoBootHelper$Pair;,"Ltmsdk/common/module/optimize/IAutoBootHelper$Pair<TT1;TT2;>;"
    .local p1, a:Ljava/lang/Object;,"TT1;"
    .local p2, b:Ljava/lang/Object;,"TT2;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Ltmsdk/common/module/optimize/IAutoBootHelper$Pair;->first:Ljava/lang/Object;

    .line 18
    iput-object p2, p0, Ltmsdk/common/module/optimize/IAutoBootHelper$Pair;->second:Ljava/lang/Object;

    .line 19
    return-void
.end method
