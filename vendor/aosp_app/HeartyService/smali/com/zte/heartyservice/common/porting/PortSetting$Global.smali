.class public final Lcom/zte/heartyservice/common/porting/PortSetting$Global;
.super Ljava/lang/Object;
.source "PortSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/common/porting/PortSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Global"
.end annotation


# static fields
.field public static final AIRPLANE_MODE_ON:Ljava/lang/String; = "airplane_mode_on"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 5
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 15
    const/4 v2, 0x3

    :try_start_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 16
    .local v0, args:[Ljava/lang/Object;
    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 17
    const/4 v2, 0x1

    aput-object p1, v0, v2

    .line 18
    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 19
    const-string v2, "android.provider.Settings$Global"

    const/4 v3, 0x0

    const-string v4, "putInt"

    invoke-static {v2, v3, v4, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 23
    .end local v0           #args:[Ljava/lang/Object;
    :goto_0
    return v2

    .line 22
    :catch_0
    move-exception v1

    .line 23
    .local v1, e:Ljava/lang/Exception;
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    goto :goto_0
.end method
