.class Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$11;
.super Ljava/lang/Object;
.source "HeartyServiceSoftwareSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->downloadUmewebDlg(Landroid/widget/CompoundButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$11;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x0

    .line 444
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getUmeDownloadStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 467
    :goto_0
    :pswitch_0
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setUrlSafeDefault(Z)V

    .line 468
    iget-object v5, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$11;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-virtual {v5}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 469
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 470
    return-void

    .line 447
    :pswitch_1
    const-string v5, "http://umeweb.cn/p20n/UmeBrowser.apk"

    const-string v6, "UmeBrowser.apk"

    const v7, 0x7f0a063f

    invoke-static {v5, v8, v6, v7, v8}, Lcom/zte/heartyservice/update/NetworkTool;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v2

    .line 448
    .local v2, umeDownloadId:J
    invoke-static {v2, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setUmeDownloadId(J)V

    goto :goto_0

    .line 453
    .end local v2           #umeDownloadId:J
    :pswitch_2
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v5

    const-string v6, "download"

    invoke-virtual {v5, v6}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 454
    .local v0, downloadManager:Landroid/app/DownloadManager;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getUmeDownloadId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v4

    .line 455
    .local v4, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 456
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 460
    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    iget-object v5, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$11;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-virtual {v5, v1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 462
    .end local v0           #downloadManager:Landroid/app/DownloadManager;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 444
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
