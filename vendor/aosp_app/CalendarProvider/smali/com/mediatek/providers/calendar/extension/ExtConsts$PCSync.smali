.class public final Lcom/mediatek/providers/calendar/extension/ExtConsts$PCSync;
.super Ljava/lang/Object;
.source "ExtConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/providers/calendar/extension/ExtConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PCSync"
.end annotation


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = ",createTime INTEGER,modifyTime INTEGER"

.field public static final CREATE_TIME:Ljava/lang/String; = "createTime"

.field public static final MODIFY_TIME:Ljava/lang/String; = "modifyTime"


# instance fields
.field final synthetic this$0:Lcom/mediatek/providers/calendar/extension/ExtConsts;


# direct methods
.method public constructor <init>(Lcom/mediatek/providers/calendar/extension/ExtConsts;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mediatek/providers/calendar/extension/ExtConsts$PCSync;->this$0:Lcom/mediatek/providers/calendar/extension/ExtConsts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
