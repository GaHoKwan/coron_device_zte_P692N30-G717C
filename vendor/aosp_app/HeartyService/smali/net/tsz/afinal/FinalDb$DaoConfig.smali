.class public Lnet/tsz/afinal/FinalDb$DaoConfig;
.super Ljava/lang/Object;
.source "FinalDb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tsz/afinal/FinalDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DaoConfig"
.end annotation


# instance fields
.field private dbUpdateListener:Lnet/tsz/afinal/FinalDb$DbUpdateListener;

.field private dbVersion:I

.field private debug:Z

.field private mContext:Landroid/content/Context;

.field private mDbName:Ljava/lang/String;

.field private targetDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->mContext:Landroid/content/Context;

    .line 760
    const-string v0, "afinal.db"

    iput-object v0, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->mDbName:Ljava/lang/String;

    .line 761
    iput v1, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->dbVersion:I

    .line 762
    iput-boolean v1, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->debug:Z

    .line 758
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDbName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->mDbName:Ljava/lang/String;

    return-object v0
.end method

.method public getDbUpdateListener()Lnet/tsz/afinal/FinalDb$DbUpdateListener;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->dbUpdateListener:Lnet/tsz/afinal/FinalDb$DbUpdateListener;

    return-object v0
.end method

.method public getDbVersion()I
    .locals 1

    .prologue
    .line 784
    iget v0, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->dbVersion:I

    return v0
.end method

.method public getTargetDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->targetDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public isDebug()Z
    .locals 1

    .prologue
    .line 792
    iget-boolean v0, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->debug:Z

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 772
    iput-object p1, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->mContext:Landroid/content/Context;

    .line 773
    return-void
.end method

.method public setDbName(Ljava/lang/String;)V
    .locals 0
    .parameter "dbName"

    .prologue
    .line 780
    iput-object p1, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->mDbName:Ljava/lang/String;

    .line 781
    return-void
.end method

.method public setDbUpdateListener(Lnet/tsz/afinal/FinalDb$DbUpdateListener;)V
    .locals 0
    .parameter "dbUpdateListener"

    .prologue
    .line 804
    iput-object p1, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->dbUpdateListener:Lnet/tsz/afinal/FinalDb$DbUpdateListener;

    .line 805
    return-void
.end method

.method public setDbVersion(I)V
    .locals 0
    .parameter "dbVersion"

    .prologue
    .line 788
    iput p1, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->dbVersion:I

    .line 789
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .parameter "debug"

    .prologue
    .line 796
    iput-boolean p1, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->debug:Z

    .line 797
    return-void
.end method

.method public setTargetDirectory(Ljava/lang/String;)V
    .locals 0
    .parameter "targetDirectory"

    .prologue
    .line 820
    iput-object p1, p0, Lnet/tsz/afinal/FinalDb$DaoConfig;->targetDirectory:Ljava/lang/String;

    .line 821
    return-void
.end method
