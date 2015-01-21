.class Lcom/zte/backup/format/db/SettingsItem;
.super Ljava/lang/Object;
.source "SettingsBackup.java"


# instance fields
.field public m_itemKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m_itemName:Ljava/lang/String;

.field public m_uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "name"
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p3, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/backup/format/db/SettingsItem;->m_itemKeys:Ljava/util/ArrayList;

    .line 294
    iput-object p1, p0, Lcom/zte/backup/format/db/SettingsItem;->m_itemName:Ljava/lang/String;

    .line 295
    iput-object p2, p0, Lcom/zte/backup/format/db/SettingsItem;->m_uri:Ljava/lang/String;

    .line 296
    iput-object p3, p0, Lcom/zte/backup/format/db/SettingsItem;->m_itemKeys:Ljava/util/ArrayList;

    .line 297
    return-void
.end method
