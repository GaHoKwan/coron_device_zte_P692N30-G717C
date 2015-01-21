.class Lcom/isw/android/corp/util/InitFuncs$1;
.super Ljava/lang/Thread;
.source "InitFuncs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isw/android/corp/util/InitFuncs;->initFS(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/isw/android/corp/util/InitFuncs$1;->val$ctx:Landroid/content/Context;

    .line 225
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 229
    invoke-static {}, Lcom/isw/android/corp/util/InitFuncs;->copyPreAreaCodeData()V

    .line 234
    iget-object v0, p0, Lcom/isw/android/corp/util/InitFuncs$1;->val$ctx:Landroid/content/Context;

    const-string v1, "premoredata"

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/InitFuncs;->copyPreAssetsData(Landroid/content/Context;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/isw/android/corp/util/LocalConfig;->preDataFile:Ljava/lang/String;

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->pinyinCompanyDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/precompany.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v0, v1}, Lcom/isw/android/corp/message/MiniCompanyData;->updatePinYinFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method
