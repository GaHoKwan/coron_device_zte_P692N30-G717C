.class public Lo/if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/if$鷭;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static 鷭(Lo/櫯;)Landroid/os/Parcelable$Creator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Lo/\u6aef<TT;>;)Landroid/os/Parcelable$Creator<TT;>;"
        }
    .end annotation

    .line 0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 37
    invoke-static {p0}, Lo/ȃ;->鷭(Lo/櫯;)Landroid/os/Parcelable$Creator;

    .line 39
    :cond_0
    new-instance v0, Lo/if$鷭;

    invoke-direct {v0, p0}, Lo/if$鷭;-><init>(Lo/櫯;)V

    return-object v0
.end method
