.class public Lcom/zte/heartyservice/speedup/NeedCleanFile;
.super Ljava/lang/Object;
.source "NeedCleanFile.java"


# instance fields
.field mListAppFile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/speedup/SysGarbageFile;Ljava/util/List;)V
    .locals 1
    .parameter "m"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/heartyservice/speedup/SysGarbageFile;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppFileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, n:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/zte/heartyservice/speedup/NeedCleanFile;->mSysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    .line 13
    iput-object v0, p0, Lcom/zte/heartyservice/speedup/NeedCleanFile;->mListAppFile:Ljava/util/List;

    .line 17
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/NeedCleanFile;->mSysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    .line 18
    iput-object p2, p0, Lcom/zte/heartyservice/speedup/NeedCleanFile;->mListAppFile:Ljava/util/List;

    .line 19
    return-void
.end method
