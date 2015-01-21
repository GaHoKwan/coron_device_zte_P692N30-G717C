.class Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;
.super Landroid/os/AsyncTask;
.source "PackageInstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1854
    iput-object p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1854
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1854
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .parameter "arg0"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1860
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v2, v6, v7}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;ILjava/lang/Object;)V

    .line 1866
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    const/4 v3, 0x6

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v2, v3, v7}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;ILjava/lang/Object;)V

    .line 1867
    const-string v2, "PackageInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Environment.getExternalStorageDirectory()  ============="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    const-string v2, "PackageInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDUtils.getAvailableSDSize(Environment.getExternalStorageDirectory()) ============="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/heartyservice/common/utils/SDUtils;->getAvailableSDSize(Ljava/io/File;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/heartyservice/common/utils/SDUtils;->getTotalSDSize(Ljava/io/File;)J

    move-result-wide v3

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->SDTotalSize:J
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3102(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;J)J

    .line 1870
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/heartyservice/common/utils/SDUtils;->getAvailableSDSize(Ljava/io/File;)J

    move-result-wide v3

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->SDNoUsedSize:J
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3202(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;J)J

    .line 1871
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getTotalInternalMemorySize()J

    move-result-wide v3

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PhoneTotalSize:J
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3302(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;J)J

    .line 1872
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getAvailableInternalMemorySize()J

    move-result-wide v3

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PhoneNoUsedSize:J
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3402(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;J)J

    .line 1873
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->SDTotalSize:J
    invoke-static {v2}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)J

    move-result-wide v2

    const-wide/32 v4, 0xa00000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_13

    .line 1875
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isSDUsable:Z
    invoke-static {v2, v8}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3702(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 1884
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v2, v9, v7}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;ILjava/lang/Object;)V

    .line 1885
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->initAntivirusEngine()Z

    move-result v2

    if-ne v6, v2, :cond_0

    .line 1886
    const-string v2, "PackageInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " MSG_VINUS_BEGIN = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;
    invoke-static {v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->scanApkPathForVinus(Ljava/lang/String;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    move-result-object v3

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    invoke-static {v2, v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$1202(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Lcom/zte/heartyservice/common/datatype/VirusScanResult;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    .line 1894
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    const/4 v3, 0x4

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v2, v3, v7}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;ILjava/lang/Object;)V

    .line 1896
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sourceFile:Ljava/io/File;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v5}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/class.dex"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v3

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->dexFile:Ldalvik/system/DexFile;
    invoke-static {v2, v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16102(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Ldalvik/system/DexFile;)Ldalvik/system/DexFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1900
    :goto_1
    new-instance v1, Lcom/zte/heartyservice/interceptad/FeatureParser;

    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-direct {v1, v2}, Lcom/zte/heartyservice/interceptad/FeatureParser;-><init>(Landroid/content/Context;)V

    .line 1901
    .local v1, parser:Lcom/zte/heartyservice/interceptad/FeatureParser;
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;
    invoke-static {v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget-object v5, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->dexFile:Ldalvik/system/DexFile;
    invoke-static {v5}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ldalvik/system/DexFile;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/zte/heartyservice/interceptad/FeatureParser;->parsePackage(Ljava/lang/String;ILdalvik/system/DexFile;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    move-result-object v3

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mApplicationAdInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    invoke-static {v2, v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$2002(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    .line 1902
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1903
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mApplicationAdInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    invoke-static {v2, v7}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$2002(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    .line 1906
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    const/4 v3, 0x7

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v2, v3, v7}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;ILjava/lang/Object;)V

    .line 1907
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v2, v10, v7}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;ILjava/lang/Object;)V

    .line 1908
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    const/4 v3, 0x5

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v2, v3, v7}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;ILjava/lang/Object;)V

    .line 1916
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    const/16 v3, 0x8

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v2, v3, v7}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;ILjava/lang/Object;)V

    .line 1917
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->analysis()V
    invoke-static {v2}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    .line 1918
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissions:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfInternet:[Ljava/lang/String;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermission(Ljava/util/Set;[Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Ljava/util/Set;[Ljava/lang/String;)Z

    move-result v2

    if-ne v6, v2, :cond_2

    .line 1919
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfInternet:Z
    invoke-static {v2, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3902(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 1921
    :cond_2
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    const/16 v3, 0x9

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v2, v3, v7}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;ILjava/lang/Object;)V

    .line 1926
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    const/16 v3, 0xa

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v2, v3, v7}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;ILjava/lang/Object;)V

    .line 1927
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissions:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfSendSms:[Ljava/lang/String;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermission(Ljava/util/Set;[Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Ljava/util/Set;[Ljava/lang/String;)Z

    move-result v2

    if-ne v6, v2, :cond_3

    .line 1928
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfSendSms:Z
    invoke-static {v2, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$4402(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 1929
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, v3, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    iget-object v4, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v4, v4, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I

    move-result v3

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfSendSmsType:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$4802(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I

    .line 1931
    :cond_3
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissions:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfPhoneCall:[Ljava/lang/String;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermission(Ljava/util/Set;[Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Ljava/util/Set;[Ljava/lang/String;)Z

    move-result v2

    if-ne v6, v2, :cond_4

    .line 1932
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfPhoneCall:Z
    invoke-static {v2, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5002(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 1934
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, v3, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    iget-object v4, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v4, v4, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v9, v4}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I

    move-result v3

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfPhoneCallType:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5402(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I

    .line 1937
    :cond_4
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissions:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfReadContact:[Ljava/lang/String;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermission(Ljava/util/Set;[Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Ljava/util/Set;[Ljava/lang/String;)Z

    move-result v2

    if-ne v6, v2, :cond_5

    .line 1938
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfContact:Z
    invoke-static {v2, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$5602(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 1939
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, v3, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v5, v5, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I

    move-result v3

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfContactType:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6002(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I

    .line 1941
    :cond_5
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissions:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfWriteContact:[Ljava/lang/String;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermission(Ljava/util/Set;[Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Ljava/util/Set;[Ljava/lang/String;)Z

    move-result v2

    if-ne v6, v2, :cond_6

    .line 1942
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfContactWrite:Z
    invoke-static {v2, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6202(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 1943
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, v3, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v5, v5, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I

    move-result v3

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfContactWriteType:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6602(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I

    .line 1946
    :cond_6
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissions:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfReadCallLog:[Ljava/lang/String;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermission(Ljava/util/Set;[Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Ljava/util/Set;[Ljava/lang/String;)Z

    move-result v2

    if-ne v6, v2, :cond_7

    .line 1947
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCallLog:Z
    invoke-static {v2, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6802(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 1948
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, v3, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    const/16 v4, 0x10

    iget-object v5, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v5, v5, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I

    move-result v3

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfCallLogType:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7202(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I

    .line 1950
    :cond_7
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissions:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfWriteCallLog:[Ljava/lang/String;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermission(Ljava/util/Set;[Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Ljava/util/Set;[Ljava/lang/String;)Z

    move-result v2

    if-ne v6, v2, :cond_8

    .line 1951
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCallLogWrite:Z
    invoke-static {v2, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7402(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 1952
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, v3, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    const/16 v4, 0x11

    iget-object v5, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v5, v5, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I

    move-result v3

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfCallLogWriteType:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$7802(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I

    .line 1955
    :cond_8
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissions:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfReadMessage:[Ljava/lang/String;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermission(Ljava/util/Set;[Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Ljava/util/Set;[Ljava/lang/String;)Z

    move-result v2

    if-ne v6, v2, :cond_9

    .line 1956
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfMessage:Z
    invoke-static {v2, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8002(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 1957
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, v3, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    iget-object v4, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v4, v4, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v10, v4}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I

    move-result v3

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfMessageType:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8402(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I

    .line 1959
    :cond_9
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissions:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfWriteMessage:[Ljava/lang/String;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermission(Ljava/util/Set;[Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Ljava/util/Set;[Ljava/lang/String;)Z

    move-result v2

    if-ne v6, v2, :cond_a

    .line 1960
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfMessageWrite:Z
    invoke-static {v2, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$8602(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 1961
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, v3, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v5, v5, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I

    move-result v3

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfMessageWriteType:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9002(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I

    .line 1965
    :cond_a
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissions:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfPhoneInfo:[Ljava/lang/String;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermission(Ljava/util/Set;[Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Ljava/util/Set;[Ljava/lang/String;)Z

    move-result v2

    if-ne v6, v2, :cond_b

    .line 1966
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfPhoneInfo:Z
    invoke-static {v2, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9102(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 1967
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, v3, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v5, v5, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I

    move-result v3

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfPhoneInfoType:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9502(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I

    .line 1969
    :cond_b
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissions:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfLocation:[Ljava/lang/String;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermission(Ljava/util/Set;[Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Ljava/util/Set;[Ljava/lang/String;)Z

    move-result v2

    if-ne v6, v2, :cond_c

    .line 1970
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfLocation:Z
    invoke-static {v2, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$9702(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 1971
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, v3, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    const/16 v4, 0xa

    iget-object v5, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v5, v5, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I

    move-result v3

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfLocationType:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10102(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I

    .line 1974
    :cond_c
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissions:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfCalendar:[Ljava/lang/String;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermission(Ljava/util/Set;[Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Ljava/util/Set;[Ljava/lang/String;)Z

    move-result v2

    if-ne v6, v2, :cond_d

    .line 1975
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCalendar:Z
    invoke-static {v2, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10302(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 1976
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, v3, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    const/16 v4, 0xb

    iget-object v5, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v5, v5, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I

    move-result v3

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfCalendarType:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10702(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I

    .line 1978
    :cond_d
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissions:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfRecordAudio:[Ljava/lang/String;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermission(Ljava/util/Set;[Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Ljava/util/Set;[Ljava/lang/String;)Z

    move-result v2

    if-ne v6, v2, :cond_e

    .line 1979
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfRecordAudio:Z
    invoke-static {v2, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$10902(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 1980
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, v3, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v5, v5, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I

    move-result v3

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfRecordAudioType:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11302(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I

    .line 1982
    :cond_e
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissions:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfEnableBluetooth:[Ljava/lang/String;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermission(Ljava/util/Set;[Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Ljava/util/Set;[Ljava/lang/String;)Z

    move-result v2

    if-ne v6, v2, :cond_f

    .line 1983
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfEnableBluetooth:Z
    invoke-static {v2, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11502(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 1984
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, v3, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    const/16 v4, 0xd

    iget-object v5, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v5, v5, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I

    move-result v3

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfEnableBluetoothType:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$11902(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I

    .line 1986
    :cond_f
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissions:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfEnableData:[Ljava/lang/String;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermission(Ljava/util/Set;[Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Ljava/util/Set;[Ljava/lang/String;)Z

    move-result v2

    if-ne v6, v2, :cond_10

    .line 1987
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfEnableData:Z
    invoke-static {v2, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12102(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 1988
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, v3, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    const/16 v4, 0xe

    iget-object v5, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v5, v5, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I

    move-result v3

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfEnableDataType:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12502(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I

    .line 1990
    :cond_10
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissions:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfEnableWifi:[Ljava/lang/String;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermission(Ljava/util/Set;[Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Ljava/util/Set;[Ljava/lang/String;)Z

    move-result v2

    if-ne v6, v2, :cond_11

    .line 1991
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfEnableWifi:Z
    invoke-static {v2, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12702(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 1992
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, v3, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    const/16 v4, 0xf

    iget-object v5, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v5, v5, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I

    move-result v3

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfEnableWifiType:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13102(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I

    .line 1994
    :cond_11
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissions:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$16900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashSet;

    move-result-object v3

    sget-object v4, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfCamera:[Ljava/lang/String;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermission(Ljava/util/Set;[Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Ljava/util/Set;[Ljava/lang/String;)Z

    move-result v2

    if-ne v6, v2, :cond_12

    .line 1995
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCamera:Z
    invoke-static {v2, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13302(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 1996
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, v3, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    const/16 v4, 0x12

    iget-object v5, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v5, v5, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAppCategoryPermissionType(ILjava/lang/String;)I

    move-result v3

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfCameraType:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$13702(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I

    .line 1998
    :cond_12
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    const/16 v3, 0xb

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v2, v3, v7}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;ILjava/lang/Object;)V

    .line 2021
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    const/16 v3, 0x12

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V
    invoke-static {v2, v3, v7}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;ILjava/lang/Object;)V

    .line 2022
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isCheckFinshed:Z
    invoke-static {v2, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17102(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    .line 2024
    return-object v7

    .line 1877
    .end local v1           #parser:Lcom/zte/heartyservice/interceptad/FeatureParser;
    :cond_13
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isSDUsable:Z
    invoke-static {v2, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$3702(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z

    goto/16 :goto_0

    .line 1897
    :catch_0
    move-exception v0

    .line 1898
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1
.end method
