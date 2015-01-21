.class public Lcn/com/zte/nlt/update/Updater$UpdateInfo;
.super Ljava/lang/Object;
.source "Updater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/zte/nlt/update/Updater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateInfo"
.end annotation


# instance fields
.field public size:J

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget v0, Lcn/com/zte/nlt/update/Updater;->NO_UPDATE:I

    iput v0, p0, Lcn/com/zte/nlt/update/Updater$UpdateInfo;->status:I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/com/zte/nlt/update/Updater$UpdateInfo;->size:J

    return-void
.end method
