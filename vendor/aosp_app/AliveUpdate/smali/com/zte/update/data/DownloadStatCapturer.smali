.class public Lcom/zte/update/data/DownloadStatCapturer;
.super Ljava/lang/Object;
.source "DownloadStatCapturer.java"


# instance fields
.field private dlParam:Lcom/zte/update/data/DownloadParams;

.field paraSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/zte/update/data/DownloadParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/update/data/DownloadStatCapturer;->paraSet:Ljava/util/Map;

    .line 23
    new-instance v0, Lcom/zte/update/data/DownloadParams;

    invoke-direct {v0}, Lcom/zte/update/data/DownloadParams;-><init>()V

    iput-object v0, p0, Lcom/zte/update/data/DownloadStatCapturer;->dlParam:Lcom/zte/update/data/DownloadParams;

    return-void
.end method
