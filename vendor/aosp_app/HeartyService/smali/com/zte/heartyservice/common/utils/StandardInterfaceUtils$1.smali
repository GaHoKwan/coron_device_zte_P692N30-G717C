.class final Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$1;
.super Ljava/lang/Thread;
.source "StandardInterfaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->doInterceptAdPrepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 325
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->chooseInterceptAdScheme()V

    .line 326
    return-void
.end method
