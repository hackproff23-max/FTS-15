.class Lcom/applovin/impl/sdk/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/aq;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ar;->a:Lcom/applovin/impl/sdk/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ar;->a:Lcom/applovin/impl/sdk/aq;

    iget-object v0, v0, Lcom/applovin/impl/sdk/aq;->a:Lcom/applovin/impl/sdk/ap;

    iget-object v0, v0, Lcom/applovin/impl/sdk/ap;->a:Lcom/applovin/impl/sdk/ao;

    iget-object v0, v0, Lcom/applovin/impl/sdk/ao;->a:Lcom/applovin/impl/sdk/an;

    invoke-static {v0}, Lcom/applovin/impl/sdk/an;->c(Lcom/applovin/impl/sdk/an;)V

    return-void
.end method
