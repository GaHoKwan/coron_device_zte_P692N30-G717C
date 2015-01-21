.class public Lcom/zte/heartyservice/main/HeartyServiceZTEHelp;
.super Landroid/app/Service;
.source "HeartyServiceZTEHelp.java"


# static fields
.field private static ZTE_HELP_SERVICE:Ljava/lang/String;


# instance fields
.field private mBinder:Lcom/zte/heartyservice/main/IZTEHelpService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "android.permission.ZTE_HELP_SERVICE"

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceZTEHelp;->ZTE_HELP_SERVICE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    new-instance v0, Lcom/zte/heartyservice/main/HeartyServiceZTEHelp$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/HeartyServiceZTEHelp$1;-><init>(Lcom/zte/heartyservice/main/HeartyServiceZTEHelp;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceZTEHelp;->mBinder:Lcom/zte/heartyservice/main/IZTEHelpService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceZTEHelp;->mBinder:Lcom/zte/heartyservice/main/IZTEHelpService$Stub;

    return-object v0
.end method
