.class public Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardNotFoundException;
.super Ljava/lang/Exception;
.source "SDCardBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/base/SDCardBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SDCardNotFoundException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x64a6e96b3b386fc6L


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;


# direct methods
.method public constructor <init>(Lcom/amoi/AmoiEngineerMode/base/SDCardBase;)V
    .locals 1
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/base/SDCardBase$SDCardNotFoundException;->this$0:Lcom/amoi/AmoiEngineerMode/base/SDCardBase;

    .line 300
    const-string v0, "SD card does not exist"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 301
    return-void
.end method
