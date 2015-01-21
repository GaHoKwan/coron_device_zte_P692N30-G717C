.class public Lcom/zte/heartyservice/power/SwitchTools$ModeName;
.super Ljava/lang/Object;
.source "SwitchTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/SwitchTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModeName"
.end annotation


# instance fields
.field id:I

.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/heartyservice/power/SwitchTools;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/power/SwitchTools;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "Name"
    .parameter "ID"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/zte/heartyservice/power/SwitchTools$ModeName;->this$0:Lcom/zte/heartyservice/power/SwitchTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-object p2, p0, Lcom/zte/heartyservice/power/SwitchTools$ModeName;->name:Ljava/lang/String;

    .line 301
    iput p3, p0, Lcom/zte/heartyservice/power/SwitchTools$ModeName;->id:I

    .line 302
    return-void
.end method
