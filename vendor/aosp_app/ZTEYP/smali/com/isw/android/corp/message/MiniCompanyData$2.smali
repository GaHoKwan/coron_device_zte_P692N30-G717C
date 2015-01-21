.class Lcom/isw/android/corp/message/MiniCompanyData$2;
.super Ljava/lang/Thread;
.source "MiniCompanyData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isw/android/corp/message/MiniCompanyData;->getCompanyRawItem(Ljava/lang/String;Z)Lcom/isw/android/corp/bean/CompanyItemBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$fphone:Ljava/lang/String;

.field private final synthetic val$itemName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/isw/android/corp/message/MiniCompanyData$2;->val$fphone:Ljava/lang/String;

    iput-object p2, p0, Lcom/isw/android/corp/message/MiniCompanyData$2;->val$itemName:Ljava/lang/String;

    .line 1049
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1051
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/isw/android/corp/message/MiniCompanyData;->access$2(Z)V

    .line 1052
    new-instance v1, Lcom/isw/android/corp/bean/CompanyItemBean;

    invoke-direct {v1}, Lcom/isw/android/corp/bean/CompanyItemBean;-><init>()V

    .line 1053
    .local v1, item:Lcom/isw/android/corp/bean/CompanyItemBean;
    iget-object v4, p0, Lcom/isw/android/corp/message/MiniCompanyData$2;->val$fphone:Ljava/lang/String;

    #calls: Lcom/isw/android/corp/message/MiniCompanyData;->parseCompanyData(Ljava/lang/String;Lcom/isw/android/corp/bean/CompanyItemBean;)Lcom/isw/android/corp/bean/CompanyItemBean;
    invoke-static {v4, v1}, Lcom/isw/android/corp/message/MiniCompanyData;->access$3(Ljava/lang/String;Lcom/isw/android/corp/bean/CompanyItemBean;)Lcom/isw/android/corp/bean/CompanyItemBean;

    move-result-object v1

    .line 1054
    iget-object v4, v1, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1056
    sget-object v4, Lcom/isw/android/corp/util/LocalConfig;->callUpdateFile:Ljava/lang/String;

    invoke-static {v4}, Lcom/isw/android/corp/util/LocalConfig;->getFileContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1057
    .local v0, callUpdatePhones:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/isw/android/corp/message/MiniCompanyData$2;->val$fphone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1059
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/isw/android/corp/message/MiniCompanyData$2;->val$itemName:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1060
    .local v2, itemFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1061
    const-string v4, "MiniCompanyData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Delete item: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/isw/android/corp/message/MiniCompanyData$2;->val$itemName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1075
    .end local v0           #callUpdatePhones:Ljava/lang/String;
    .end local v2           #itemFile:Ljava/io/File;
    :cond_0
    :goto_0
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/isw/android/corp/message/MiniCompanyData;->access$2(Z)V

    .line 1076
    return-void

    .line 1065
    .restart local v0       #callUpdatePhones:Ljava/lang/String;
    :cond_1
    const-string v4, "MiniCompanyData"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/isw/android/corp/message/MiniCompanyData$2;->val$fphone:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " belong to callupdate."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1069
    .end local v0           #callUpdatePhones:Ljava/lang/String;
    :cond_2
    const-string v4, "MiniCompanyData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Update new item: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/isw/android/corp/message/MiniCompanyData$2;->val$itemName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/isw/android/corp/bean/CompanyItemBean;->info:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1071
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/isw/android/corp/bean/CompanyItemBean;->iconraw:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1072
    iget-object v5, v1, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/isw/android/corp/bean/CompanyItemBean;->sshow:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1070
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1073
    .local v3, newContent:Ljava/lang/String;
    iget-object v4, p0, Lcom/isw/android/corp/message/MiniCompanyData$2;->val$itemName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LocalConfig;->overWirteFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
