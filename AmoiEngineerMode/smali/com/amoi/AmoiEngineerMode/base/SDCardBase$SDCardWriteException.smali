.class public Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardWriteException;
.super Ljava/lang/Exception;
.source "SDCardBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/base/SDCardBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SDCardWriteException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x510698cf502375feL


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;


# direct methods
.method public constructor <init>(Lcom/amoi/AmoiEngineerMode/base/SDCardBase;)V
    .locals 1
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardWriteException;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    .line 308
    const-string v0, "SDCardWriteException"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 309
    return-void
.end method
