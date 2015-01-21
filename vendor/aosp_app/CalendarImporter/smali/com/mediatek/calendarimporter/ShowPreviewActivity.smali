.class public Lcom/mediatek/calendarimporter/ShowPreviewActivity;
.super Landroid/app/Activity;
.source "ShowPreviewActivity.java"

# interfaces
.implements Lcom/mediatek/calendarimporter/BindServiceHelper$ServiceConnectedOperation;


# static fields
.field static final DURATION:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "ShowPreviewActivity"


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mErrorCertainButton:Landroid/widget/Button;

.field private mImportButton:Landroid/widget/Button;

.field private mImportErrorIcon:Landroid/widget/ImageView;

.field private mIntent:Landroid/content/Intent;

.field private mLoadingView:Landroid/view/View;

.field private mMainPreviewView:Landroid/view/View;

.field private mPreviewText:Landroid/widget/TextView;

.field private mProcessor:Lcom/mediatek/calendarimporter/service/PreviewProcessor;

.field private mService:Lcom/mediatek/calendarimporter/service/VCalService;

.field private mServiceHelper:Lcom/mediatek/calendarimporter/BindServiceHelper;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/calendarimporter/ShowPreviewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->showSelectActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/calendarimporter/ShowPreviewActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->setImportErrorView(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/calendarimporter/ShowPreviewActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mLoadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/calendarimporter/ShowPreviewActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/calendarimporter/ShowPreviewActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mImportButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/calendarimporter/ShowPreviewActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mMainPreviewView:Landroid/view/View;

    return-object v0
.end method

.method private setImportErrorView(I)V
    .locals 4
    .parameter "resoureId"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mImportButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mTitleTextView:Landroid/widget/TextView;

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 206
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 207
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mErrorCertainButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mImportErrorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mMainPreviewView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 211
    return-void
.end method

.method private showSelectActivity()V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 133
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/mediatek/calendarimporter/HandleProgressActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 149
    const-string v0, "ShowPreviewActivity"

    const-string v1, "onBackPressed."

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mProcessor:Lcom/mediatek/calendarimporter/service/PreviewProcessor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    iget-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mProcessor:Lcom/mediatek/calendarimporter/service/PreviewProcessor;

    invoke-virtual {v0, v1}, Lcom/mediatek/calendarimporter/service/VCalService;->tryCancelProcessor(Lcom/mediatek/calendarimporter/service/BaseProcessor;)V

    .line 153
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 154
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x1060012

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const-string v1, "ShowPreviewActivity"

    const-string v2, "onCreate."

    invoke-static {v1, v2}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mIntent:Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mUri:Landroid/net/Uri;

    .line 82
    const v1, 0x7f05000d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mMainPreviewView:Landroid/view/View;

    .line 84
    new-instance v1, Lcom/mediatek/calendarimporter/BindServiceHelper;

    invoke-direct {v1, p0}, Lcom/mediatek/calendarimporter/BindServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mServiceHelper:Lcom/mediatek/calendarimporter/BindServiceHelper;

    .line 85
    iget-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mServiceHelper:Lcom/mediatek/calendarimporter/BindServiceHelper;

    invoke-virtual {v1}, Lcom/mediatek/calendarimporter/BindServiceHelper;->onBindService()V

    .line 87
    const v1, 0x7f050010

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f050012

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mPreviewText:Landroid/widget/TextView;

    .line 90
    invoke-static {p0, v3}, Lcom/mediatek/calendarimporter/utils/Utils;->getThemeMainColor(Landroid/content/Context;I)I

    move-result v0

    .line 91
    .local v0, color:I
    if-eq v0, v3, :cond_0

    .line 92
    iget-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    const v1, 0x7f050011

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 96
    :cond_0
    const v1, 0x7f05000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mLoadingView:Landroid/view/View;

    .line 97
    const v1, 0x7f05000f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mImportErrorIcon:Landroid/widget/ImageView;

    .line 99
    const v1, 0x7f050014

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mErrorCertainButton:Landroid/widget/Button;

    .line 100
    iget-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mErrorCertainButton:Landroid/widget/Button;

    new-instance v2, Lcom/mediatek/calendarimporter/ShowPreviewActivity$1;

    invoke-direct {v2, p0}, Lcom/mediatek/calendarimporter/ShowPreviewActivity$1;-><init>(Lcom/mediatek/calendarimporter/ShowPreviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v1, 0x7f050015

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mImportButton:Landroid/widget/Button;

    .line 107
    iget-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mImportButton:Landroid/widget/Button;

    new-instance v2, Lcom/mediatek/calendarimporter/ShowPreviewActivity$2;

    invoke-direct {v2, p0}, Lcom/mediatek/calendarimporter/ShowPreviewActivity$2;-><init>(Lcom/mediatek/calendarimporter/ShowPreviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v1, 0x7f050013

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mCancelButton:Landroid/widget/Button;

    .line 124
    iget-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/mediatek/calendarimporter/ShowPreviewActivity$3;

    invoke-direct {v2, p0}, Lcom/mediatek/calendarimporter/ShowPreviewActivity$3;-><init>(Lcom/mediatek/calendarimporter/ShowPreviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 139
    const-string v0, "ShowPreviewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy() + mService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    iget-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mProcessor:Lcom/mediatek/calendarimporter/service/PreviewProcessor;

    invoke-virtual {v0, v1}, Lcom/mediatek/calendarimporter/service/VCalService;->tryCancelProcessor(Lcom/mediatek/calendarimporter/service/BaseProcessor;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mServiceHelper:Lcom/mediatek/calendarimporter/BindServiceHelper;

    invoke-virtual {v0}, Lcom/mediatek/calendarimporter/BindServiceHelper;->unBindService()V

    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 145
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 216
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mServiceHelper:Lcom/mediatek/calendarimporter/BindServiceHelper;

    invoke-virtual {v0}, Lcom/mediatek/calendarimporter/BindServiceHelper;->unBindService()V

    .line 217
    iput-object p1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mIntent:Landroid/content/Intent;

    .line 218
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mUri:Landroid/net/Uri;

    .line 219
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mServiceHelper:Lcom/mediatek/calendarimporter/BindServiceHelper;

    invoke-virtual {v0}, Lcom/mediatek/calendarimporter/BindServiceHelper;->onBindService()V

    .line 220
    return-void
.end method

.method public serviceConnected(Lcom/mediatek/calendarimporter/service/VCalService;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 158
    const-string v1, "ShowPreviewActivity"

    const-string v2, "serviceConnected."

    invoke-static {v1, v2}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    .line 161
    new-instance v0, Lcom/mediatek/calendarimporter/ShowPreviewActivity$4;

    invoke-direct {v0, p0}, Lcom/mediatek/calendarimporter/ShowPreviewActivity$4;-><init>(Lcom/mediatek/calendarimporter/ShowPreviewActivity;)V

    .line 190
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/mediatek/calendarimporter/service/PreviewProcessor;

    iget-object v2, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mUri:Landroid/net/Uri;

    invoke-direct {v1, p0, v2, v0}, Lcom/mediatek/calendarimporter/service/PreviewProcessor;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mProcessor:Lcom/mediatek/calendarimporter/service/PreviewProcessor;

    .line 191
    iget-object v1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    iget-object v2, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mProcessor:Lcom/mediatek/calendarimporter/service/PreviewProcessor;

    invoke-virtual {v1, v2}, Lcom/mediatek/calendarimporter/service/VCalService;->tryExecuteProcessor(Lcom/mediatek/calendarimporter/service/BaseProcessor;)V

    .line 192
    return-void
.end method

.method public serviceUnConnected()V
    .locals 2

    .prologue
    .line 196
    const-string v0, "ShowPreviewActivity"

    const-string v1, "serviceUnConnected."

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;

    .line 198
    return-void
.end method
