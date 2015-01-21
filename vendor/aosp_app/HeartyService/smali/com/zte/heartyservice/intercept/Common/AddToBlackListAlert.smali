.class public Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;
.super Landroid/app/Activity;
.source "AddToBlackListAlert.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final LOG_TAG:Ljava/lang/String; = "AddToBlackListAlert"

.field private static final POSITIVE_BUTTON:I = -0x1


# instance fields
.field protected mAlert:Lcom/android/internal/app/AlertController;

.field protected mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

.field private phoneNum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "content://com.zte.heartyservice"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->phoneNum:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->finish()V

    .line 80
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->finish()V

    .line 87
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 64
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 65
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 66
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "phone_number"

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->phoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "type"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    const-string v1, "enable_sms"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 69
    const-string v1, "enable_calling"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 71
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 73
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 74
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->finish()V

    .line 75
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    new-instance v2, Lcom/android/internal/app/AlertController;

    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-direct {v2, p0, p0, v3}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v2, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->mAlert:Lcom/android/internal/app/AlertController;

    .line 40
    new-instance v2, Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {v2, p0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 44
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 46
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x7f020017

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "phone_num"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->phoneNum:Ljava/lang/String;

    .line 52
    const v2, 0x7f0a0546

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 53
    const v2, 0x7f0a0547

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->phoneNum:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 54
    const v2, 0x7f0a0173

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 55
    const v2, 0x7f0a0174

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 56
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 57
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->setupAlert()V

    .line 59
    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->setFinishOnTouchOutside(Z)V

    .line 60
    return-void

    .line 47
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setupAlert()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 91
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/AddToBlackListAlert;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 92
    return-void
.end method
